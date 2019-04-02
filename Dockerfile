FROM lachlanevenson/k8s-helm:v2.11.0

FROM lachlanevenson/k8s-kubectl:v1.12.1
COPY --from=0 /usr/local/bin/helm /usr/local/bin/helm
ENTRYPOINT [] 
CMD ["/bin/sh"]
RUN apk add --update bash openssl wget ca-certificates curl openjdk8 nss git
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories \
    && apk add --update go make musql-dev\
    && rm /var/cache/apk/*
