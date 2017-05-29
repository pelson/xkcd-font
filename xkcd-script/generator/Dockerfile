FROM continuumio/miniconda

MAINTAINER IPython Project <ipython-dev@python.org>

RUN conda install -y -c conda-forge \
        harfbuzz cairo freetype pkg-config \
        python=2.7 pango glib freetype libxml2 pkg-config \
 && conda install -y -c bioconda potrace \
 && export PREFIX=/opt/conda

RUN git clone https://github.com/fontforge/fontforge.git

RUN conda install -y -c conda-forge automake
RUN conda install -y -c conda-forge libtool

# RUN git clone https://github.com/fontforge/fontforge.git \
RUN cd fontforge \
 && ./bootstrap --force

RUN apt-get install gcc -y

RUN apt-get install make -y
RUN apt-get install libx11-dev libxext-dev libxrender-dev libice-dev libsm-dev -y
RUN cd fontforge && \
  export PREFIX=/opt/conda && export LDFLAGS="-L${PREFIX}/lib" && export CFLAGS="-I${PREFIX}/include" && export PREFIX=/opt/conda && export PANGO_CFLAGS="-I${PREFIX}/include/pango-1.0" && export PANGO_LIBS="-lpango-1.0" \
 && ./configure --prefix=${PREFIX} --without-x \
 && make && make install

RUN conda install -y -c conda-forge scikit-image nomkl
