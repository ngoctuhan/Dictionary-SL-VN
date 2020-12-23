import cv2
import os
import numpy as np #

class Videoto3D:

    def __init__(self, width, height, channels, nframes = 24):

        self.width = width
        self.height = height
        self.channels = channels
        self.nframes = nframes

    def covert2array(self,file_path):

        cap = cv2.VideoCapture(file_path)
        frames = []

        while(True):

            ret, frame = cap.read()
            if ret is False:
                break

            frame = cv2.resize(frame, (self.width, self.height))
            frames.append(frame)
           
        cap.release()
        cv2.destroyAllWindows()

        nframe = len(frames)
        if nframe <= 0:
            raise Exception("Error File")
        elif nframe < self.nframes:
            raise Exception("File is too short. At least {} frames".format(self.nframes))
        else:
            frame_idx = [int(x * nframe / self.nframes) for x in range(self.nframes)]
            frame_arr = []
            for i in frame_idx:
                frame_arr.append(frames[i])
                
           
            return np.array(frame_arr)
