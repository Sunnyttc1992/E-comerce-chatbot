
FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirement.txt

COPY app.py agent.py .

# docker run platform linux/x86_64 -p 8080:8080 --env-file .env gen_ai_agent
CMD["python","app.py"]
