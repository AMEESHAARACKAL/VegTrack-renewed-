import tensorflow as tf

import keras
from keras.models import load_model
model = load_model('./fresh_stale.h5')
tf_lite_converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = tf_lite_converter.convert()

open('fresh_stale.tflite','wb').write(tflite_model)
#done convertion