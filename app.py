from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/user')
def get_user():
    user = {
        "id": 1,
        "name": "João Silva V02",
        "email": "joao.silva@example.com"
    }
    return jsonify(user)

@app.route('/health')
def health():
    return "OK", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
