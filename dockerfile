# 1. Light-weight Nginx production image use karenge
FROM nginx:alpine

# 2. Apne local code (index.html) ko Nginx ke default serving folder mein copy karenge
COPY index.html /usr/share/nginx/html/

# 3. Port 80 ko expose karenge
EXPOSE 80
