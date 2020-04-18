FROM shesse/redoc-cli:1.0.0

COPY LICENSE README.md /

COPY generate-docs.sh /generate-docs.sh

ENTRYPOINT ["/generate-docs.sh"]
