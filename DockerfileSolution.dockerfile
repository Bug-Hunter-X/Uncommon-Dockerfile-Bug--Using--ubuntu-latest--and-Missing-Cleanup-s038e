FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install -r requirements.txt
RUN apt-get autoremove -y && apt-get clean -y
COPY . .
CMD ["python3", "/app.py"]