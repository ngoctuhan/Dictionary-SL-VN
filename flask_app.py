import flask
import os
import numpy as np
from flask import Flask, render_template, request, jsonify
from utils.crawl_result import get_respond
from utils.extend import getName
# from utils.videoto3D import Videoto3D # dont use for product
from utils.videoto3D_v2 import Videoto3D
from utils.load_tf import I3D_Model
from utils.label_mapping import get_mapping
import base64
import sys
from utils.split_video_sequence import Splitor
import tensorflow as tf


model = I3D_Model('models')

videoto3D = Videoto3D(224, 224, 3, 32)

splitor = Splitor(224, 224, 'models_activate')

CLASSES = get_mapping()

############################## VER 2 ###############################


def get_result(keyword):

    try:

        id_video = get_respond(keyword)
        if id_video is not None:
            URL = 'https://www.youtube.com/watch?v={}'.format(id_video)
            status = 'true'
            return URL, status
        else:
            result = 'Không có từ cần tra trong cơ sở dữ liệu.'
            status = 'false'
    except:
        result = 'Hệ thống gặp sự cố'
        status = 'false'
    return result, status


################### VER 1################################
# def get_iframe(keyword):

#     global df
#     try:
#         result = df[df["word"] == keyword].iloc[0]['link']
#         status = 'true'
#     except:
#         result = 'Không có từ cần tra trong cơ sở dữ liệu.'
#         status = 'false'

#     # time.sleep(4)
#     return result, status
app = Flask(__name__)


def predict(path_video):

    X = videoto3D.covert2array(path_video)
    pred = model.predict([X])[0]

    # print(pred)

    argsort = np.argsort(pred)
    # idex_max = np.argmax(pred)
    idex_max = argsort[-1]

    print(CLASSES[str(argsort[-2])])
    print(CLASSES[str(argsort[-3])])
    print(CLASSES[str(argsort[-4])])
    print(CLASSES[str(argsort[-5])])

    label = CLASSES[str(idex_max)]
    coff = pred[idex_max]

    return label, coff


def predict_sequence(path_video_sequence):

    splitor.split_video(path_video_sequence)

    arr_frame = splitor.get_arr_frame()
    print(arr_frame.shape)

    pred = model.predict(arr_frame)

    idx_max = np.argmax(pred, axis=1)

    words = ""
    conff = 0
    for i, idx in enumerate(idx_max):
        words += CLASSES[str(idx)] + "  , "
        conff += pred[i][idx]
    splitor.sub_video = []
    return words, conff/arr_frame.shape[0]


@app.route("/", methods=['GET'])
def main():
    return render_template('index.html')


@app.route('/vnsl', methods=['POST', 'GET'])
def vn_sl():

    if request.method == 'POST':

        keyword = request.form['keyword']

        result, status = get_result(keyword)

        respond = {}
        respond['src'] = result
        respond['success'] = status

        return jsonify(respond)

    if request.method == 'GET':

        return "Không hỗ trợ phương thức get"


@app.route('/slvn', methods=['POST'])
def sl_vn():
    if request.method == 'POST':

        blod_data = request.form['data']

        blod_data = blod_data.split(',')[1]

        video_string = base64.b64decode(blod_data)

        name = getName('mp4')
        file_path = os.path.join('video', name)
        with open(file_path, 'wb') as f_vid:
            f_vid.write(video_string)

        label, coff = predict(file_path)

        respond = {}
        respond['label'] = label
        respond['conff'] = str(coff)
        respond['success'] = 'true'

        print(respond)

        return jsonify(respond)


@app.route('/slvn-sequence', methods=['POST'])
def sl_vn_sequence():
    if request.method == 'POST':

        blod_data = request.form['data']

        blod_data = blod_data.split(',')[1]

        video_string = base64.b64decode(blod_data)

        name = getName('mp4')
        file_path = os.path.join('video', name)
        with open(file_path, 'wb') as f_vid:
            f_vid.write(video_string)

        label, coff = predict_sequence(file_path)

        respond = {}
        respond['label'] = label
        respond['conff'] = str(coff)
        respond['success'] = 'true'

        print(respond)

        return jsonify(respond)


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5500)
