FROM ubuntu:latest
MAINTAINER I "I@email.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install flask
ENTRYPOINT ["python"]
EXPOSE 5000
CMD ["app.py"]
