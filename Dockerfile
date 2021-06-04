FROM alpine:latest
RUN apk --update add ca-certificates \
                     mailcap \
                     curl

HEALTHCHECK --start-period=2s --interval=5s --timeout=3s \
  CMD curl -f http://localhost/health || exit 1

VOLUME /etc/prometheus/alerts
EXPOSE 8081

COPY .docker.json /.filebrowser.json
COPY . /filebrowser
COPY run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]

ENTRYPOINT ["chmod", "+x", "/run.sh" ]
