FROM shesse/redoc-cli:1.0.0

RUN apt-get update && apt-get install -y dos2unix

COPY LICENSE README.md /

COPY generate-docs.sh /generate-docs.sh

RUN dos2unix /entrypoint.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./generate-docs.sh"]
