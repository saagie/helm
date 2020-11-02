FROM lachlanevenson/k8s-helm:v3.3.4

FROM lachlanevenson/k8s-kubectl:v1.19.3
COPY --from=0 /usr/local/bin/helm /usr/local/bin/helm
ENTRYPOINT [] 
CMD ["/bin/sh"]
RUN apk add --update bash openssl wget ca-certificates curl \
    && rm /var/cache/apk/*