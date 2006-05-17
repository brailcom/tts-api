#!/bin/bash

# It seems the current version of texi2dvi ignores the -o
# parameter, so we need to copy manually

makeinfo tts-api.texi &&
makeinfo tts-api.texi -E tts-api-m.texi &&
texi2dvi tts-api-m.texi &&
texi2dvi --pdf tts-api-m.texi &&
cp tts-api-m.dvi tts-api.dvi &&
cp tts-api-m.pdf tts-api.pdf &&
makeinfo -o tts-api.html --html --no-split tts-api.texi
