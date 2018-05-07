FROM openjdk:8-jre-alpine

LABEL maintainer="esplo <esplo@users.noreply.github.com>"

ARG SERPOSCOPE_VER="2.9.0"

RUN apk --no-cache add openssl \
    && wget https://serposcope.serphacker.com/download/${SERPOSCOPE_VER}/serposcope-${SERPOSCOPE_VER}.jar -O serposcope.jar \
    && apk del openssl \
    && rm -rf /var/cache/apk/*

EXPOSE 7134
VOLUME ["/root/serposcope"]

CMD ["java", "-jar", "serposcope.jar"]

