#!/bin/bash
makeinfo tts-api.texi &&
makeinfo tts-api.texi -E tts-api-m.texi && tex tts-api-m.texi
