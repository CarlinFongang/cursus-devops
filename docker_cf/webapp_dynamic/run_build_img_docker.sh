#!/usr/bin/env bash
#le contexte (dockerfile) se trouve dans le WDir webapp d'ou le "." à la fin
docker build -t webapp:v2 .