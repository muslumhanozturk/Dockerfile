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
                     # if ENTRYPOINT and CMD are to be used together, the exec form should be used. Because when shell form is used, commands in CMD cannot be passed as parameters.
---------------------------------------------------------------------

FROM centos:latest                         #  [ "java", "uygulama" ] --> exec form
ENV TEST="Bu bir denemedir"                #  java uygulama  ----------> shell form
CMD [ "echo", "$TEST" ]   # No shell processes run in exec form, so the process cannot read things like environment variables. command runs as process.
# CMD echo $TEST 

---------------------------------------------------------------------

