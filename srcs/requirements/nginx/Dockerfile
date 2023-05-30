FROM alpine:3.18
RUN apk update && apk upgrade
RUN apk add nginx
COPY nginx.conf /etc/nginx/conf.d/
RUN rm /etc/nginx/conf.d/nginx.conf
COPY html/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

