# importing modules
import json
import matplotlib.pyplot as plt
import requests
from base64 import b64encode
from IPython.display import Image
import urllib.request
from PIL import Image

ENDPOINT_URL = 'https://vision.googleapis.com/v1/images:annotate'
api_key = 'AIzaSyAekXp3vB-bJoMU3VoTkij6D5KZIn2-t5U'
img_loc = 'temp.jpg'


def makeImageData(imgpath):
    img_req = None
    with open(imgpath, 'rb') as f:
        ctxt = b64encode(f.read()).decode()
        img_req = {
            'image': {
                'content': ctxt
            },
            'features': [{
                'type': 'DOCUMENT_TEXT_DETECTION',
                'maxResults': 1
            }]
        }
    return json.dumps({"requests": img_req}).encode()


def requestOCR(url, api_key, imgpath):
    imgdata = makeImageData(imgpath)
    response = requests.post(ENDPOINT_URL,
                             data=imgdata,
                             params={'key': api_key},
                             headers={'Content-Type': 'application/json'})
    return response


def ocrFunc(url):

    # get image from link and store as "temp.jpg"
    urllib.request.urlretrieve(url, "temp.jpg")
    img = Image.open("temp.jpg")

    # request
    result = requestOCR(ENDPOINT_URL, api_key, img_loc)

    if result.status_code != 200 or result.json().get('error'):
        return "Error"
    else:
        return result.json()['responses'][0]["textAnnotations"][0]["description"]
