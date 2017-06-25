# Download

To download the xkcd-script font, see the [fonts][fonts/] directory.


# Improving xkcd-script

## Architecture

The xkcd-script font was originally developed by @pelson in his [xkcd font saga
blog posts](https://pelson.github.io/2017/xkcd_font/).  The code derives a font
from a handwriting sample provided by @randallmunroe.

The conversion process is intentionally broken into distinct phases to allow
rapid prototyping at any step of the process.  Each phase's input files are the
previous phase's output files, with the first phase being bootstrapped from the
handwriting sample itself.  In order to speed up processing, no other phase may
re-use the handwriting sample - all necessary metadata (e.g. position) should
already be available.

## Subjective change

What constitutes an improvement to a font is often highly subjective, and not
everybody may agree that the change does indeed represent an "improvement".  In
the case of disagreement, a consensus of ipython/xkcd-font developers will be
sought. In the event of no clear consensus, governance will follow the lead of
the (Jupyter governance document)[https://github.com/jupyter/governance/blob/master/governance.md].

