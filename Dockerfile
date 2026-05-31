# 使用 Eclipse Temurin JDK 21 作为基础镜像
FROM eclipse-temurin:21-jdk-alpine

# 设置工作目录
WORKDIR /app

# 复制 jar 包到镜像中
COPY target/*.jar app.jar

# 暴露端口
EXPOSE 8080

# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]