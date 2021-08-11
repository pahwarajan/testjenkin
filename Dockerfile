FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/virtual-folio.zip /var/www/html
WORKDIR /var/www/html
RUN unzip virtual-folio.zip
RUN rm -rf virtual-folio.zip &&\
    cp -rf virtual-folio/* . &&\
    cp -rf html/* . &&\
    rm -rf virtual-folio
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
