#!/bin/bash
makeinfo tts-api.texi &&
makeinfo tts-api.texi -E tts-api-m.texi && texi2dvi tts-api-m.texi &&
makeinfo -o tts-api.html --html tts-api.texi
