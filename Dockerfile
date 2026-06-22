FROM python:3.14-slim

WORKDIR /src

COPY requirements.txt ./

RUN useradd E-commerce_app && \
    pip install --no-cache-dir -r requirements.txt && \
    su E-commerce_app
  

COPY src ./src

EXPOSE 8000

CMD ["python3", "src/django_core/manage.py", "runserver"]