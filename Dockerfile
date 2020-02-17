FROM alpine
MAINTAINER "Hussnain Javed | hussnain.jav3d@gmail.com"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src
RUN npm install
EXPOSE 5000     
ENTRYPOINT ["node","./server.js"]