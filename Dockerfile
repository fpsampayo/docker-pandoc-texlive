FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN \
    set -x \
    && apt-get update \
    && apt-get install -y \
        build-essential \
        ca-certificates \
        wget \
        curl \
        tex-common \
        texlive \
        texlive-xetex \
        texlive-base \
        texlive-binaries \
        texlive-fonts-extra \
        texlive-fonts-extra-links \
        texlive-fonts-recommended \
        texlive-formats-extra \
        texlive-latex-base \
        texlive-latex-extra \
        texlive-latex-recommended \
        texlive-publishers \
        texlive-pictures \
        texlive-plain-generic \
        # extra fonts
        fonts-cantarell \
        lmodern \
        ttf-aenigma \
        ttf-georgewilliams \
        ttf-bitstream-vera \
        ttf-sjfonts \
        tv-fonts \
    && wget https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb \
    && dpkg -i pandoc-2.7.3-1-amd64.deb

COPY fonts/BreeSerif-Regular.ttf /usr/share/fonts/truetype/

VOLUME /src/
WORKDIR /src/

