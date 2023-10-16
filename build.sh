#!/usr/bin/env bash

docker run --rm -v $(pwd):/home/marp/app -v /tmp:/tmp -e LANG=$LANG marpteam/marp-cli marp --pdf --html --allow-local-files slides.md -o /tmp/slides.pdf
docker run --rm -v $(pwd):/home/marp/app -v /tmp:/tmp -e LANG=$LANG marpteam/marp-cli marp --pptx --html --allow-local-files slides.md -o /tmp/slides.pptx


cp /tmp/slides.pdf .
cp /tmp/slides.pptx .
