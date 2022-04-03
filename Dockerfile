FROM node
WORKDIR /app
COPY package*.json ./
RUN npm install  
COPY . .
EXPOSE 8080
CMD ["node","server.js"]

#Para buildar a imagem
#docker build -t nomedaimagem .

#Para criar o container
#docker run --name nomedocontainer -it -p 8080:80 nomedaimagem

