# Gunakan Node.js sebagai base image
FROM node:alpine

# Set direktori kerja di dalam container
WORKDIR /app

# Salin file proyek ke dalam container
COPY . .

# Install http-server secara global
RUN npm install -g http-server

# Expose port 8080
EXPOSE 8081

    # Jalankan http-server
CMD ["start"]
