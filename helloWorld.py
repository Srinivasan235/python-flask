from flask import Flask


app = Flask(__name__)


@app.route('/')
def home_endpoint():
    return 'CI CD Testing...this deployment is automated using cloudbuild Test 19-10-2022!!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)