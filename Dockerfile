FROM python:3.9-slim
COPY daria.py /app/
WORKDIR /app
CMD ["python", "daria.py"]

