FROM python:3.12-slim
RUN apt update && apt install -y ffmpeg
WORKDIR /app
COPY . /app/
RUN pip install -r requirements.txt
CMD ["python", "bot.py"]
