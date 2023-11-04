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

# 運行階段：使用 Node.js 鏡像
FROM node:alpine

# 設定工作目錄
WORKDIR /app

# 複製應用程式的依賴項和構建輸出
COPY --from=builder /app .

# 暴露 Nuxt.js 的默認端口
EXPOSE 3000

# 啟動應用程序
CMD ["npm", "start"]
