#Multi-stage build: It is a technical approach that minimizes the size of the image and does not carry unnecessary components in the image.

FROM mcr.microsoft.com/java/jdk:8-zulu-alpine AS derleyici  # add AS derleyici
COPY /source /usr/src/uygulama
WORKDIR /usr/src/uygulama
RUN javac uygulama.java

FROM mcr.microsoft.com/java/jre:8-zulu-alpine
WORKDIR /uygulama
COPY --from=derleyici /usr/src/uygulama .           # add --from=derleyici
CMD ["java" , "uygulama"]
