import tensorflow as tf
from tensorflow.python.platform import gfile
import os
from tensorflow.contrib.predictor import from_saved_model


class I3D_Model:

    def __init__(self, model_dir):

        self.model_dir = model_dir
        config = tf.ConfigProto()
        config.allow_soft_placement = True
        self.predict_fn = from_saved_model(self.model_dir, config=config)

    def load_graph(self):
        # We load the protobuf file from the disk and parse it to retrieve the
        # unserialized graph_def
        frozen_graph_filename = self.model_dir
        with tf.gfile.FastGFile(frozen_graph_filename, "rb") as f:
            graph_def = tf.GraphDef()
            graph_def.ParseFromString(f.read())
            f.close()

        # Then, we can use again a convenient built-in function to import a graph_def into the
        # current default Graph
        with tf.Graph().as_default() as graph:
            tf.import_graph_def(
                graph_def,
                input_map=None,
                return_elements=None,
                name="prefix",
                op_dict=None,
                producer_op_list=None
            )
        return graph

    def predict(self, X):
        #X = tf.convert_to_tensor(X, dtype=tf.float32)
        res = self.predict_fn({"images": X})
        pred = res['scores']
        return pred


# m = CNN_Model(model_dir)
# img_path = '/home/trung/Documents/Cafee API/Save/0c7u9y9f2j.jpg'
# import cv2
# import numpy as np
# img = cv2.imread(img_path)
# img = cv2.resize(img, (224, 224))
# X = np.array([img])
# print(m.predict_image(X))
