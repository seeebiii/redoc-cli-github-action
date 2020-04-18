#!/bin/sh -l

# debugging due to execution error
pwd

# debugging due to execution error
ls -al

cd /github/workspace

# debugging due to execution error
ls -al

echo "redoc-cli version: $(redoc-cli --version)"

redoc-cli $1