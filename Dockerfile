FROM ubuntu:20.04

RUN \
  apt-get update && \
  apt-get install -y sudo vim nginx

COPY default /etc/nginx/sites-available/
COPY nginx.conf /etc/nginx/

RUN ln -s /etc/nginx/sites-available/* /etc/nginx/conf.d/
COPY ./entrypoint.sh /

#RUN chmod 775 /entrypoint.sh
#WORKDIR /
#ENTRYPOINT [ "./entrypoint.sh" ]

CMD ["nginx", "-g", "daemon off;"]
#CMD ["sleep", "6000"]
