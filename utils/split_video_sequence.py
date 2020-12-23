import os
import cv2
import numpy as np 
from utils.load_tf import I3D_Model

class Splitor:

    def __init__(self, img_width, img_height, model_path, n_frames = 32):

        self.img_height = img_height
        self.img_width  = img_width
        self.model = I3D_Model(model_path)
        self.skip  = 3
        self.sub_video = []
        self.n_frames =  n_frames

    def split_video(self, video_path):

        '''
        Split a video input into n sub-video, each sub-video is a activity
        '''
        skip = 0
        start = False
        activate = 0
        deactivate = 0
        arr_frame = []
        cap = cv2.VideoCapture(video_path)
        while cap.isOpened():

            ret, frame = cap.read()

            if ret == False:
                break
            
            copy = cv2.resize(frame, (224, 224))
            arr_frame.append(copy)
            skip += 1

            if skip % self.skip == 0:
                skip = 0
                predict = self.model.predict([copy])[0]

                label = np.argmax(predict)
                score = predict[label]
            
                if label == 1:
                    if score >= 0.85:
                        # activate
                        activate += 1
                        deactivate = 0
                    elif score > 0.8:
                        # khoong xac dinh
                        # deactivate += 1
                        pass
                    else:
                        # deactivate
                        deactivate += 1
                        if deactivate >= 3 and start == False:
                            start = True
                        if deactivate > 3 and start == True: # many frame deactivate consecutive
                            if activate > 7:
                                # video 
                                self.sub_video.append(arr_frame)
                                arr_frame = []
                                activate = 0
                                deactivate = 0
                                start = False

                else:
                    deactivate += 1
                    if deactivate >= 3 and start == False:
                        start = True
                    if deactivate > 3 and start == True: # many frame deactivate consecutive
                        if activate > 7:
                            # video 
                            self.sub_video.append(arr_frame)
                            arr_frame = []
                            activate = 0
                            deactivate = 0
                            start = False

    def get_arr_frame(self):

        res = []
        for video in self.sub_video:
            nframe = len(video)
            if nframe < 6 + self.n_frames// 2 : # 2 # too short to give
                continue

            elif nframe > self.n_frames:
                frames = [int(x * nframe / self.n_frames) for x in range(self.n_frames)]
                X = [video[i] for i in frames]
                res.append(X)
            else:
                # add frame 
                # n_add = self.n_frames - nframe
                # while n_add > 0:
                pass
        self.sub_video = []
        return np.array(res)

# path_video = 'data_test/sequence_video_test.mp4'
# sp = Splitor(224, 224, 'models_activate')
# sp.split_video(path_video)

# arr_frame = sp.get_arr_frame()

# print(arr_frame.shape)
# for video in arr_frame:
#     for frame in video:
#         cv2.imshow('frame', frame)
#         cv2.waitKey(5)
    
#     print(">>>>>>>>>>>>>>>>>>>>>>")
#     cv2.waitKey(0)

# print("Number action: ", len(arr_frame))



    

