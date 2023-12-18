from flask import Flask, request, Response
import subprocess

app = Flask(__name__)

#app.run(host='0.0.0.0')

def html(content):  # Also allows you to set your own <head></head> etc
    return '<html><head>walker</head><body style="background-color:black;">' + content + '</body></html>'

@app.route('/webhook', methods=['POST','GET'])
def respond():
    #print(request.json);
    #subprocess.call(["/usr/bin/cvlc", "--run-time", "21", "/home/tmw/Music/laser2.mp3"])
    subprocess.Popen(["/usr/bin/cvlc", "--run-time", "23", "/home/tmw/Music/laser2.mp3"])
    print("hello");
    return html('')
    return Response(status=200)

if __name__ == "__main__":
    app.run(host='0.0.0.0')
