FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean install

CMD ["java", "-jar", "target/movieapp-0.0.1-SNAPSHOT.jar"]
