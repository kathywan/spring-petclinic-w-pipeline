# assume pipeline already built the jar, so this dockerfile only copies the jar into image for execution
FROM amazoncorretto:21-al2023-headful
EXPOSE 8080
WORKDIR /app
ARG JAR=spring-petclinic-3.3.0.jar

# COPY --from=BUILD /src/target/$JAR /app.jar
COPY /src/build/libs/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]