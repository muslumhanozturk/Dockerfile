FROM alpine:latest
WORKDIR /app1
COPY wordpress.tar.gz .  # Copies the .tar file
ADD wordpress.tar.gz .   # Unpacks and copies the .tar file
ADD https://wordpress.org/latest.tar.gz .  # Copies .tar file from url

----------------------------------------------------------------------

FROM mcr.microsoft.com/java/jre:8-zulu-alpine
WORKDIR /merhaba
COPY /myapp .
CMD [ "java", "merhaba" ]  # When the container created from this image is started, we can say run another application instead of the application that should run by default. Example; docker container run javaimaj ls

----------------------------------------------------------------------

FROM mcr.microsoft.com/java/jre:8-zulu-alpine
WORKDIR /merhaba
COPY /myapp .
ENTRYPOINT [ "java", "merhaba" ] # The command entered with ENTRYPOINT cannot be changed at runtime, that is, while running the container.

---------------------------------------------------------------------

FROM centos:latest
ENTRYPOINT [ "ping" ]
CMD [ "127.0.0.1" ]  # If ENTRYPOINT and CMD are used at the same time, enter the command in CMD as a parameter to ENTRYPOINT.(so the runtime can be changed in CMD.For example; docker container run pingimaj 8.8.8.8 , Version1)

---------------------------------------------------------------------

exec shell
