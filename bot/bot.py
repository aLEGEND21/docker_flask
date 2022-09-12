import time
import os

while True:
    print("Hello World!")
    print(os.environ.get("SECRET_KEY"))
    time.sleep(1)