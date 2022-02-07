FROM python:3
RUN python -m pip install --upgrade pip
WORKDIR  /app
ADD .  /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/apis/hello.py"]