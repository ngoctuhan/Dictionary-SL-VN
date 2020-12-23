import cv2
import numpy as np 

# from opticalflow import OpticalFlow  # Open CV >= 4
from utils.opticalflow import OpticalFlow  # Open CV >= 4

class Videoto3D:

    def __init__(self, img_size = (224, 224), mode = 'rgb', n_frames = 20, pading_mode = 'zero'):

        '''
        Covert from video to arrays include frames
        Input:
            img_size: size of each frame default width = 224 and height =  224 

            mode: format of image default is RGB (BRG in openCV) or options opt (opticalflow)

            n_frames: number frames is get in a video

        '''

        self.img_size = img_size
        self.mode = mode
        self.n_frames =  n_frames
        
        self.opt = OpticalFlow(thirdChannel=True, mode = pading_mode)

    def covert2array(self, path_video, mp4_format = False):

        if path_video is None:
            raise Exception('Path of video is None')
        
        # print(path_video)
        cap = cv2.VideoCapture(path_video)

        nframe = cap.get(cv2.CAP_PROP_FRAME_COUNT) # give n frame

        print(nframe)
        frames = [int(x * nframe / self.n_frames) for x in range(self.n_frames)]
        print(frames)
        if frames[-1] ==  nframe:
            frames[-1] = nframe - 1
        # print(frames)

        # print(len(frames))
        if self.mode == 'opt':

            frames.append(frames[-1] + 2)

        framearray = []

        for i in range(self.n_frames):

            cap.set(cv2.CAP_PROP_POS_FRAMES, frames[i])
            ret, prvs = cap.read()

            if prvs is None:
                
                prvs = framearray[-1]

            else:
                prvs = cv2.resize(prvs, self.img_size)

            if mp4_format == True:
                (h, w) = prvs.shape[:2]
                # calculate the center of the image
                center = (w / 2, h / 2)
                angle180 = 180
                scale = 1.0
                M = cv2.getRotationMatrix2D(center, angle180, scale)
                prvs = cv2.warpAffine(prvs, M, (w, h))

            if self.mode == 'rgb':
                
                framearray.append(prvs)

            elif self.mode == 'opt':

                cap.set(cv2.CAP_PROP_POS_FRAMES, frames[i + 1])
                ret, next_frame = cap.read()
                
                if next_frame is None:
                    next_frame = prvs
                next_frame = cv2.resize(next_frame, self.img_size)
                framearray.append(self.opt.getOpt(prvs, next_frame))

        cap.release()
        cv2.destroyAllWindows()
        
        print(len(framearray))
        if len(framearray) < self.n_frames:

            deficient_frame = self.n_frames -  len(framearray)

            # add frame

            for i in range(deficient_frame):
                
                framearray.append(framearray[-1])

        return np.array(framearray)


if __name__ == '__main__':

    video_demo = 'F:/Paper Human Activity/UCF101/UCF-101/ApplyEyeMakeup/v_ApplyEyeMakeup_g01_c01.avi'

    loader = Videoto3D(mode='opt', pading_mode='medium')

    frame = loader.covert2array(video_demo)

    print(frame.shape)

    cv2.imshow('show sample',frame[0])
    cv2.waitKey(0)


