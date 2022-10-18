# base image to use 
FROM python:3.8-slim-buster 
COPY ./helloWorld.py /helloWorld-docker/
COPY ./requirements.txt /helloWorld-docker/
WORKDIR /helloWorld-docker/
RUN pip3 install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "helloWorld.py"]