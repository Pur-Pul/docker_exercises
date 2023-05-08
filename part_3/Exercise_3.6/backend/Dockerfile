FROM golang:1.16
WORKDIR /app
COPY . .
RUN useradd -m appuser && \
    go build
ENV REQUEST_ORIGIN=http://localhost
EXPOSE 8080
USER appuser
CMD ./server