import numpy as np 
import cv2 
import os 
import random 


class OpticalFlow:

    def __init__(self, algorithm:str = "tvl1", thirdChannel:bool = True, fBound:float = 20. , mode = 'zero'):

        self.thirdChannel = thirdChannel 
        self.fBound = fBound
        self.algorithm = algorithm
        self.mode = mode
        if cv2.__version__ >= '4':
            
            if self.algorithm == 'tvl1':
                self.oTVL1 = cv2.optflow.DualTVL1OpticalFlow_create(scaleStep = 0.5, warps = 3, epsilon = 0.02)
            else:
                pass 
        else:
            if self.algorithm == 'tvl1':
                self.oTVL1 = cv2.DualTVL1OpticalFlow_create(scaleStep = 0.5, warps = 3, epsilon = 0.02)
            else:
                pass 
                
    def getOpt(self, img_prv, img_nxt):

        if cv2.__version__ >= '4':

            h, w, _ = img_prv.shape
            ImgPrev = cv2.cvtColor(img_prv, cv2.COLOR_BGR2GRAY)
            ImgCurrent =  cv2.cvtColor(img_nxt, cv2.COLOR_BGR2GRAY)

            if self.algorithm == "tvl1":
                arFlow = self.oTVL1.calc(ImgPrev, ImgCurrent, None)

            elif self.algorithm == "farnback":
                arFlow = cv2.calcOpticalFlowFarneback(ImgPrev, ImgCurrent, flow=None, 
                    pyr_scale=0.5, levels=1, winsize=15, iterations=2, poly_n=5, poly_sigma=1.1, flags=0)
            else: raise ValueError("Unknown optical flow type")
            
            arFlow = arFlow[:, :, 0:2]
            # truncate to +/-15.0, then rescale to [-1.0, 1.0]
            arFlow[arFlow > self.fBound] = self.fBound 
            arFlow[arFlow < -self.fBound] = -self.fBound
            arFlow = arFlow / self.fBound
            if self.mode == 'zero':
                # only 2 dims
                arZeros = np.zeros((h, w, 1), dtype = np.float32)
            else:
                
                opt_x = arFlow[:, :, 0]
                opt_y = arFlow[:,:, 1]

                # print(opt_x.shape)
                # print(opt_y.shape)

                opt_x =  opt_x ** 2
                opt_y =  opt_y ** 2

                # print(opt_x +  opt_y)
                opt_xy =  opt_x + opt_y
                # print(opt_xy.shape)
                arMedium =  np.sqrt(opt_xy)
                
                arZeros = np.expand_dims(arMedium, axis=-1)
                
                # print(arZeros.shape)
                
            if self.thirdChannel:
                # add third empty channel
                arFlow = np.concatenate((arFlow, arZeros), axis=2) 
            return arFlow
        else:
            h, w, _ = img_prv.shape
            ImgPrev = cv2.cvtColor(img_prv, cv2.COLOR_BGR2GRAY)
            ImgCurrent =  cv2.cvtColor(img_nxt, cv2.COLOR_BGR2GRAY)

            if self.algorithm == "tvl1":
                arFlow = self.oTVL1.calc(ImgPrev, ImgCurrent, None)
            elif self.algorithm == "farnback":
                arFlow = cv2.calcOpticalFlowFarneback(ImgPrev, ImgCurrent, flow=None, 
                    pyr_scale=0.5, levels=1, winsize=15, iterations=2, poly_n=5, poly_sigma=1.1, flags=0)
            else: raise ValueError("Unknown optical flow type")

            # only 2 dims
            arFlow = arFlow[:, :, 0:2]

            # truncate to +/-15.0, then rescale to [-1.0, 1.0]
            # arFlow[arFlow > self.fBound] = self.fBound 
            # arFlow[arFlow < -self.fBound] = -self.fBound
            # arFlow = arFlow / self.fBound
            arZeros = np.zeros((h, w, 1), dtype = np.float32)
            if self.thirdChannel:
                # add third empty channel
                arFlow = np.concatenate((arFlow, arZeros), axis=2) 
                
            return arFlow
        
