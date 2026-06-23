import requests
import os
from dotenv import load_dotenv

load_dotenv()


key = "LOCALHOST_URL"
localhost_URL = os.getenv(key)

def connection():
    response = requests.get(f"http://{localhost_URL}")
    return response.status_code

def test_connection():
    assert connection() == 200