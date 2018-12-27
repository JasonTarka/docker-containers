FROM nginx:latest

LABEL maintainer="Jason Tarka"

RUN mkdir /config
RUN sed 's@include /etc/nginx/conf.d/@include /config/@' -i /etc/nginx/nginx.conf

COPY start.sh /
RUN chmod +x /start.sh

CMD /start.sh

