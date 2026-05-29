<<<<<<< HEAD
FROM node:18

WORKDIR /app

COPY app/package.json .
RUN npm install

COPY app/ .

EXPOSE 3000

CMD ["npm", "start"]

=======
FROM nginx

COPY website /usr/share/nginx/html
>>>>>>> 2698064 (Flask MySQL CI/CD)
