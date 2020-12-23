import cv2
import numpy as np
from utils.load_tf import I3D_Model 
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import backend as K
# Define our custom loss function

def focal_loss(y_true, y_pred):
  gamma = 2.0
  alpha = 0.25
  pt_1 = tf.where(tf.equal(y_true, 1), y_pred, tf.ones_like(y_pred))
  pt_0 = tf.where(tf.equal(y_true, 0), y_pred, tf.zeros_like(y_pred))
  return -K.sum(alpha * K.pow(1. - pt_1, gamma) * K.log(pt_1))-K.sum((1-alpha) * K.pow( pt_0, gamma) * K.log(1. - pt_0))


# from tensorflow.keras.models import load_model

# model = load_model('model_activate.h5', custom_objects={'focal_loss': focal_loss})
skip = 0
model =  I3D_Model('models_activate')
cap =  cv2.VideoCapture('data_test/sequence_video_test.mp4')

c = 0
p1 = (10, 20)
p2 =  (40, 20)
RED = (0, 0, 255)
GREEN = (0, 255, 0)
while cap.isOpened():

    ret, frame = cap.read()
   
    if ret is False:
        break
    copy = cv2.resize(frame, (224, 224))
    
    skip += 1
    if skip % 4 == 0:

        skip = 0
        copy = np.expand_dims(copy,axis = 0)
        predict = model.predict(copy)[0]

        label = np.argmax(predict)

        score = predict[label]
        # label == 0: activate: red

        # label == 1: 
        print(predict)
        
        if label == 1:
            if score >= 0.85:
                cv2.line(copy[0], p1, p2, RED, 5)

            # elif score <= 0.72:
            #     cv2.line(copy, p1, p2, GREEN, 5)
            else:
                # pass
                cv2.line(copy[0], p1, p2, GREEN, 5)
        else:
            cv2.line(copy[0], p1, p2, GREEN, 5)

        cv2.imshow('frame', copy[0])
        cv2.waitKey(0)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
