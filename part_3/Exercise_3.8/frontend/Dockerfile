FROM node:16-alpine AS build-env
WORKDIR /app
COPY . /app

RUN cd /app && \
    npm install && \
    npm run build

FROM node:16-alpine
WORKDIR /app
COPY --from=build-env /app/build ./build
RUN npm install -g serve && \
    adduser -D appuser

ENV REACT_APP_BACKEND_URL=http://localhost/api
USER appuser
EXPOSE 5000
CMD serve -s -l 5000 build
