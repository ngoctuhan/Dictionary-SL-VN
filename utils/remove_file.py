import cv2
import numpy as np
from utils.load_tf import I3D_Model 
import os
skip = 0
model =  I3D_Model('models_activate')

folder = 'F:/Current Project\Dataset Sign Language/data_hand_activate/activate'
for file in os.listdir(folder):
    file_path =  os.path.join(folder, file)

    img = cv2.imread(file_path)

    predict = model.predict([img])[0]

    label = np.argmax(predict)
    print(label)
    score = predict[label]

    if label == 1 and score  < 0.85:
        # remove

        os.remove(file_path)
    
    elif label == 0:
        os.remove(file_path)