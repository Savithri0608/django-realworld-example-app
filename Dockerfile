From python:3.10-slim
Workdir /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .
#non root user access for security

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


