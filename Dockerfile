FROM php:8.2-cli

WORKDIR /app

COPY . .

RUN mkdir -p data && chmod -R 777 data

EXPOSE 10000

CMD ["php", "-S", "0.0.0.0:10000", "index.php"]
