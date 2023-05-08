FROM golang:1.16 AS build-env
WORKDIR /app
COPY . /app
RUN useradd -m appuser && \
    cd /app && \
    CGO_ENABLED=0 go build -o backend

FROM scratch
COPY --from=build-env /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=build-env /etc/passwd /etc/passwd
WORKDIR /app
COPY --from=build-env /app/backend .
ENV REQUEST_ORIGIN=http://localhost
EXPOSE 8080
USER appuser
CMD [ "./backend" ]