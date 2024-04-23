FROM eclipse-temurin:21-jre

WORKDIR /opt/app
COPY build/jline3-oom-FAT.jar .
EXPOSE 5005
CMD ["java", "-jar", "-Xmx64m", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5005", "jline3-oom-FAT.jar"]
