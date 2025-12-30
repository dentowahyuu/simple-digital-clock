# Gunakan image Nginx sebagai base
FROM nginx:alpine

# Hapus halaman default Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file dari repo ke folder server Nginx
COPY . /usr/share/nginx/html

# Port yang dibuka
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]