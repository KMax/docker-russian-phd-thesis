FROM fedora:24

MAINTAINER Maxim Kolchin "kolchinmax@gmail.com"

RUN dnf install --refresh -y git \
  texlive texlive-latex texlive-xetex texlive-collection-latex texlive-collection-latexrecommended texlive-xetex-def texlive-collection-xetex latexmk texlive-biblatex-gost biber texlive-collection-latexextra

RUN dnf install -y http://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm && \
  fc-cache -fv

WORKDIR /root
