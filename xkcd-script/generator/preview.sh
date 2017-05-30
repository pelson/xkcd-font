#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
RUN_CTXT="docker run -v $(pwd)/../:$(pwd)/../ -w $(pwd) -e FONTCONFIG_FILE=$(pwd)/fonts.conf xkcd-script-generator"

$RUN_CTXT pango-view --backend=ft2 --font "XKCD" --text "Hello world $(date)"  -o foo.png
