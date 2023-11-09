# 使用官方 Node.js 镜像作为基础镜像
FROM node:latest

# 设置工作目录
WORKDIR /app

# 复制应用程序文件到容器中
COPY . .

# 暴露端口
EXPOSE 3000

# 更新apt-get并安装应用程序的依赖
RUN apt-get update && \
    npm install && \
    chmod 775 server tunnel.js start.sh /app

# 设置默认的命令，同时启动Node.js应用程序和start.sh脚本
CMD npm start
