# Menggunakan image Node.js sebagai base image
FROM node:16

# Set working directory di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json
COPY package*.json ./ 

# Install dependencies
RUN npm install

# Menyalin sisa file aplikasi
COPY . .

# Mengatur variabel lingkungan untuk produksi
ENV NODE_ENV=production

# Membuka port aplikasi yang akan digunakan
EXPOSE 3000

# Menjalankan aplikasi
CMD ["npm", "start"]
