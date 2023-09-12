# Kullanılacak temel imajı belirtin. Python uygulamaları için genellikle Python imajı kullanılır.
FROM python:alpine

# Docker konteyneri içinde çalışacak dizini oluşturun ve bu dizini çalışma dizini olarak ayarlayın.
WORKDIR /usr/src/app

# Gerekli bağımlılıkları kopyalayın ve yükleyin. Önce sadece requirements.txt kopyalanır.
COPY requirements.txt .
RUN pip install -r requirements.txt

# Uygulamanızın kaynak kodunu Docker konteynerine kopyalayın.
COPY . .

# Flask uygulamanızı çalıştırmak için bir komut belirtin.
CMD ["python", "bookstore-api.py"]