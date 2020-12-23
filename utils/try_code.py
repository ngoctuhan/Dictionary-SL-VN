import numpy as np
import cv2
from utils import videoto3D

loader = videoto3D.Videoto3D(n_frames=24)

# frames = loader.covert2array("video/05_10_2020_22_06_48.mp4")

# for frame in frames: 
#     cv2.imshow('img', frame)
#     cv2.waitKey(500)
# Define the codec and create VideoWriter object
#fourcc = cv2.cv.CV_FOURCC(*'DIVX')
#out = cv2.VideoWriter('output.avi',fourcc, 20.0, (640,480))
# out = cv2.VideoWriter('output.avi', -1, 20.0, (640,480))

# print(frames.shape)
# for frame in frames:
#     cv2.imshow("img", frame)
#     cv2.waitKey(0)

cap = cv2.VideoCapture("video/05_10_2020_22_06_48.mp4")

frames = []

# while(True):
#     ret, frame = cap.read()
   
#     if ret is False:
#         break
#     frame = cv2.resize(frame, (224, 224))
#     frames.append(frame)
#     cv2.imshow('frame',frame)
#     # cv2.waitKey(100)
#     if cv2.waitKey(1) & 0xFF == ord('q'):
#         break

# cap.release()
# cv2.destroyAllWindows()

from utils.videoto3D_v2 import Videoto3D

loader = Videoto3D(224, 224, 24)
frame_arr = loader.covert2array("video/05_10_2020_22_06_48.mp4")

print(frame_arr.shape)
for frame in frame_arr:
    cv2.imshow("img", frame)
    cv2.waitKey(400)