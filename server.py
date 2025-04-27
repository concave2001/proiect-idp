from flask import Flask, render_template

from flaskext.mysql import MySQL
 
server = Flask(__name__)

mysql = MySQL()
mysql.init_app(server)
 
@server.route('/')
def index():
    return render_template('index.html')
 
if __name__ == "__main__":
    server.run(host="0.0.0.0")