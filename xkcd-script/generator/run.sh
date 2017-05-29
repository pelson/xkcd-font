#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

RUN_CTXT=docker run -v $(pwd):$(pwd) -w $(pwd) xkcd-script-generator

cd ${DIR}


# Following @pelson's field notes at https://pelson.github.io/2017/xkcd_font/
$RUN_CTXT python pt1_character_extraction.py
#$RUN_CTXT python pt2_character_classification.py
#$RUN_CTXT python pt3_ppm_to_svg.py
#$RUN_CTXT python pt4_svg_to_font.py
