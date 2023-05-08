FROM golang:1.16-alpine
WORKDIR /app
COPY . .
RUN adduser -D appuser && \
    go build
ENV REQUEST_ORIGIN=http://localhost
EXPOSE 8080
USER appuser
CMD ./server