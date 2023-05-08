FROM node:16-alpine
WORKDIR /app
COPY . .

RUN npm install && \
    npm run build &&\
    npm install -g serve && \
    adduser -D appuser

ENV REACT_APP_BACKEND_URL=http://localhost/api
USER appuser
EXPOSE 5000
CMD serve -s -l 5000 build