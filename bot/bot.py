import time
import os
from dotenv import load_dotenv

load_dotenv()

while True:
    print("Hello World!")
    print(os.environ.get("SECRET_KEY"))
    time.sleep(1)