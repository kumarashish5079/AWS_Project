FROM ubuntu:latest
MAINTAINER kumarashish5079@gmail.com
RUM yun install httpd -y
	zip
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/milina.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip milina-html
RUN cp -rvf milina-html/* .
RUN rm -rf milina-html milina.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
