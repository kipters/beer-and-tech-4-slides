#!/usr/bin/env bash

docker run --rm -v $(pwd):/home/marp/app -v /tmp:/tmp -e LANG=$LANG marpteam/marp-cli marp --pdf --theme-set /home/marp/app/actors-theme.css --html --allow-local-files -o /tmp/slides.pdf slides.md
docker run --rm -v $(pwd):/home/marp/app -v /tmp:/tmp -e LANG=$LANG marpteam/marp-cli marp --pptx --theme-set /home/marp/app/actors-theme.css --html --allow-local-files -o /tmp/slides.pptx slides.md 


cp /tmp/slides.pdf .
cp /tmp/slides.pptx .
