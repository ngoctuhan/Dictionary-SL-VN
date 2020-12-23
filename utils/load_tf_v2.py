import cv2
import numpy as np
import tensorflow as tf

# loaded = tf.saved_model.load('models_activate')

# print(list(loaded.signatures.keys()))  # ["serving_default"]

# infer = loaded.signatures["serving_default"]
# print(infer.structured_outputs)
# print(infer.structured_inputs)

model = tf.keras.models.load_model('models_activate')
img = cv2.imread('N3_an_mung1_48.jpg')
img = cv2.resize(img, (224, 224))
img = np.expand_dims(img, axis=0)
labeling = model.predict(img)

print(labeling)


# print(img.shape)
# pred = predict_fn(img)
# print(pred)
