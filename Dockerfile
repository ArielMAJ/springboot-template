FROM maven:3.9.9-ibm-semeru-21-jammy

WORKDIR /

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src

EXPOSE 8080
CMD ["./mvnw", "spring-boot:run"]