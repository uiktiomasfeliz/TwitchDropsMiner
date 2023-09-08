FROM python:latest

RUN mkdir -p /home/twr

WORKDIR /home/twr

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

# RUN pip3 install --no-cache-dir pillow aiohttp yarl selenium selenium-wire undetected_chromedriver

COPY . .

ENTRYPOINT ["python3"]

CMD ["main.py", "--cli"]
