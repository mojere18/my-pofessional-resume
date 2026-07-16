FROM httpd
RUN apt update
RUN apt install nano vim -y
RUN sed -i 's/Listen 80/Listen 85/' /usr/local/apache2/conf/httpd.conf
COPY ./index.html /usr/local/apache2/htdocs/
EXPOSE 85