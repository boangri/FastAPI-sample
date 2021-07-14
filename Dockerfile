FROM python:3
COPY requirements.txt /
RUN pip3 install -r /requirements.txt
COPY . /app
WORKDIR /app
EXPOSE 8080
CMD ["uvicorn", "--port", "8080", "--host", "0.0.0.0", "app.main:app"]

