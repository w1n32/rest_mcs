FROM python:3.7
COPY app.py /app
WORKDIR /app
RUN pip install Flask==1.0.2
EXPOSE 5000
CMD ["python", "app.py"]