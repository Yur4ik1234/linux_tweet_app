FROM nginx:latest

MAINTAINER YURII HAIDAR "yurii.haidar@gmail.com"

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html

WORKDIR linux_tweet_app

RUN \
  apt-get update && \
  apt-get install -y nginx


EXPOSE 80 443 

CMD ["nginx", "-g", "daemon off;"]
