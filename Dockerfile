# docker build --platform linux/x86_64 -t gen_ai_agent .  
FROM python:3.11-slim

WORKDIR /app

# Prevent Python buffering (better logs)
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py agent.py ./

# App Runner expects 8080
EXPOSE 8080

# Start web server (must stay running)
CMD ["python", "app.py"]
