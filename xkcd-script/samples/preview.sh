#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
RUN_CTXT="docker run -v $(pwd)/../:$(pwd)/../ -w $(pwd) -e FONTCONFIG_FILE=$(pwd)/fonts.conf xkcd-script-generator"

$RUN_CTXT pango-view --backend=ft2 --font "XKCD" --text "Hello world $(date) <span size=\"xx-large\">Blue text</span>"  -o foo.png --height 40 --markup --dpi 150

SIMPLE_CTXT="${RUN_CTXT} pango-view --backend=ft2 --font \"XKCD\" --dpi 150" 


CONTENT=$(cat ipsum.txt)
${SIMPLE_CTXT} -o ipsum.png --text "${CONTENT}" --wrap=word --width=400


CONTENT=$(cat handwriting.txt)
${SIMPLE_CTXT} -o handwriting.png --text "${CONTENT}"

