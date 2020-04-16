FROM shesse/redoc-cli:1.0.0

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]