FROM python:3.6-alpine

COPY requirements.txt /

RUN pip install -r /requirements.txt --ignore-installed

COPY src/ /app

WORKDIR /app

CMD ["gunicorn", "-w 2", "-b 0.0.0.0:5000", "taskrouter_dashboard:app"]
# CMD ["python", "taskrouter_dashboard.py"]
