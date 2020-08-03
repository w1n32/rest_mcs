FROM python:3.7
WORKDIR /app
COPY app.py /app
RUN pip install Flask==1.0.2
EXPOSE 5000
CMD ["python", "app.py"]