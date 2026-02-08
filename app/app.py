from flask import Flask
import psycopg2
import os

app = Flask(__name__)

@app.route('/')
def hello():
    try:
        # Database connection check
        conn = psycopg2.connect(
            host="db",
            database="lara_db",
            user="user",
            password="password"
        )
        return "<h1>LARA Project: Database Connected Successfully!</h1>"
    except Exception as e:
        return f"<h1>Error: {str(e)}</h1>"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
