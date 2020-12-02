FROM centos:latest
MAINTAINER zeeshaan.a@gmail.com
RUN yun install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www.html/
WORKDIR /var/www.html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* . 
RUN rf -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
expose 80 
