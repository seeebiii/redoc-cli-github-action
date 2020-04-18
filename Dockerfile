FROM shesse/redoc-cli:1.0.0

RUN apk update && apk add dos2unix

COPY LICENSE README.md /

COPY generate-docs.sh /generate-docs.sh

RUN dos2unix /generate-docs.sh && apk del dos2unix && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./generate-docs.sh"]
