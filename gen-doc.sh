#!/bin/bash
makeinfo tts-api.texi &&
makeinfo tts-api.texi -E tts-api-m.texi &&
texi2dvi -o tts-api.dvi tts-api-m.texi &&
texi2dvi --pdf -o tts-api.dvi tts-api-m.texi &&
makeinfo -o tts-api.html --html --no-split tts-api.texi
