# Static hosting for the seat-view simulator (used by Fly.io)
FROM nginx:1.27-alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
