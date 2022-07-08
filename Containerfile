FROM fedora:latest
RUN dnf -y upgrade \
 && dnf -y install tuxpaint \
 && dnf -y install vim \
 && dnf -y install httpd
COPY my-info.html /var/www/html/myinfo.html
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
