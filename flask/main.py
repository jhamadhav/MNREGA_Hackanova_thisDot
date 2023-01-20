from flask import Flask, request, jsonify
from ocr import ocrFunc
app = Flask(__name__)


@app.route('/')
def index():
    return 'Hello from Flask!'


@app.route('/ocr', methods=['POST'])
def ocr():
    reqData = request.get_json()

    resData = {
        "status": "fail",
        "msg": "please add 'url' parameter in body",
        "text": ""
    }

    if('url' not in reqData.keys()):
        return resData

    resData = {
        "status": "pass"
    }
    resData["text"] = ocrFunc(reqData["url"])
    return resData


@app.route('/api')
def api():
    return 'Hello from Flask api!'


# app.run(host='localhost', port=5000, debug=True)
