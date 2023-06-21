# Stage 1: Build the Spring Boot application
FROM openjdk:17 as build-spring
RUN microdnf install findutils
WORKDIR /usr/src/app
COPY ./jokes-backend .
RUN ./gradlew build --stacktrace --no-daemon

# Stage 2: Build the React application
FROM node:14 as build-react
WORKDIR /app
COPY ./jokes-frontend/package.json /app/package.json
RUN npm install
COPY ./jokes-frontend/ /app
RUN npm run build

# Stage 3: Merge the applications and serve them
FROM openjdk:17
COPY --from=build-spring /usr/src/app/build/libs/*.jar /app.jar
COPY --from=build-react /app/build /public
CMD java -jar app.jar
EXPOSE 8080
