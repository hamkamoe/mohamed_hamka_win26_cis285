FROM mcr.microsoft.com/devcontainers/universal:linux

WORKDIR /app

RUN npm install -g npm

COPY package*.json ./
RUN npm install express

COPY frontend/package*.json ./frontend/
RUN cd frontend && npm install

COPY . .

EXPOSE 3000
EXPOSE 5000