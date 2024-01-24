#Filename: Dockerfile
FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv
RUN /bin/bash -c "source venv/bin/activate"

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python","code_model_training/train.py"]

EXPOSE 5000

CMD ["python","app.py"]
