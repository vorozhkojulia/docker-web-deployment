
FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www/html/website
# Копіюємо папку website з підкаталогами в /var/www/html/website
COPY website ./


# Відкриваємо порт 80 для доступу до вебсайту
EXPOSE 80

# Команда запуску Nginx
CMD ["nginx", "-g", "daemon off;"]
