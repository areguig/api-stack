FROM adoptopenjdk/openjdk11 as build

WORKDIR /workspace/app

COPY gradle gradle
COPY gradlew .
COPY .gradle .gradle
COPY build.gradle .
COPY src src


RUN ./gradlew wrapper
RUN ./gradlew build --stacktrace

FROM adoptopenjdk/openjdk11
VOLUME /tmp
ARG BUILD_DIR=/workspace/app/build/libs
COPY --from=build ${BUILD_DIR}/app-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]