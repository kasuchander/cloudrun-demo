FROM python:3.11-slim
WORKDIR /app
COPY reqquirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
CMD ["gunicorn", "-b", ":8080", "app:app"]
