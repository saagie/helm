FROM lachlanevenson/k8s-helm:v2.14.2

FROM lachlanevenson/k8s-kubectl:v1.12.1
COPY --from=0 /usr/local/bin/helm /usr/local/bin/helm
ENTRYPOINT [] 
CMD ["/bin/sh"]
RUN apk add --update bash openssl wget ca-certificates curl \
    && rm /var/cache/apk/*