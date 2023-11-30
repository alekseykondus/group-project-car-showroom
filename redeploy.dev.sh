#!/bin/bash
docker build -t univ .
docker run -p 3333:3333 -it --rm univ