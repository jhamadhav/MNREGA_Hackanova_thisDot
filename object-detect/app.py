from flask import Flask, render_template, request, jsonify
from PIL import Image
import os
import io
import sys
import numpy as np
import cv2
import base64
from yolo_detection_images import runModel
import urllib.request
import requests

app = Flask(__name__)

############################################## THE REAL DEAL ###############################################
@app.route('/detectObject', methods=['POST'])
def mask_image():
    # print(request.files , file=sys.stderr)
    file = request.files['image'].read()  # byte file
    npimg = np.fromstring(file, np.uint8)
    img = cv2.imdecode(npimg, cv2.IMREAD_COLOR)

    ######### Do preprocessing here ################
    # img[img > 150] = 0
    # any random stuff do here
    ################################################

    img = runModel(img)

    img = Image.fromarray(img.astype("uint8"))

    rawBytes = io.BytesIO()
    img.save(rawBytes, "JPEG")
    rawBytes.seek(0)
    img_base64 = base64.b64encode(rawBytes.read())

    resData = {
        'status': str(img_base64),
    }
    return jsonify(resData)

##################################################### THE REAL DEAL HAPPENS ABOVE ######################################

# THE REAL DEAL again
################################################
@app.route('/object', methods=['POST'])
def mask_image_object():
    reqData = request.get_json()
    print(reqData)

    # img_link = "https://storage.googleapis.com/mnrega-bucket/pond-33.jpg-2ae54fbcc517136f.jpg"
    img_link = reqData["url"]

    req = urllib.request.urlopen(img_link)
    arr = np.asarray(bytearray(req.read()), dtype=np.uint8)
    img = cv2.imdecode(arr, cv2.IMREAD_COLOR)

    img = runModel(img)

    img = Image.fromarray(img.astype("uint8"))
    img.save("temp.jpg")

    # upload image to gcs

    url = 'https://mnrega.el.r.appspot.com/uploads'

    files = {'file': open('temp.jpg', 'rb')}
    x = requests.post(url, files=files)
    x = x.json()

    resData = {
        'img_link': x["data"]
    }
    return jsonify(resData)

##################################################### THE REAL DEAL HAPPENS ABOVE ######################################


@app.route('/test', methods=['GET', 'POST'])
def test():
    print("log: got at test", file=sys.stderr)
    return jsonify({'status': 'succces'})


@app.route('/')
def home():
    return render_template('./index.html')


@app.after_request
def after_request(response):
    print("log: setting cors", file=sys.stderr)
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Headers',
                         'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response


if __name__ == '__main__':
    app.run(debug=True)

# app.run(host='0.0.0.0', port=8080)
