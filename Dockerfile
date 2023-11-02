# 建立階段：使用 Node.js 鏡像
FROM node:alpine AS builder

# 設定工作目錄
WORKDIR /app

# 複製 package.json 和 package-lock.json
COPY package*.json ./

# 安裝依賴項
RUN npm install

# 複製應用程序代碼
COPY . .

# 構建應用程序
RUN npm run build

# 運行階段：使用 Nginx 鏡像
FROM nginx:alpine

# 複製 Nuxt.js 應用的構建輸出到 Nginx 的服務目錄
COPY --from=builder /app/dist /usr/share/nginx/subdomain_html

# 暴露 80 和 443 端口
EXPOSE 80 443
