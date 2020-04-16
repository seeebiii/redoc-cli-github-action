FROM shesse/redoc-cli:1.0.0

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

CMD ["cd", "/github/workspace"]

ENTRYPOINT ["./entrypoint.sh"]