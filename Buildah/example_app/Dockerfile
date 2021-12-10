FROM docker.io/library/python:3.6
LABEL maintainer="natali :)"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/app.py"]
