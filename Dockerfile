FROM fedora:27

MAINTAINER Maxim Kolchin "kolchinmax@gmail.com"

RUN dnf install --refresh -y git \
  texlive texlive-latex texlive-xetex texlive-collection-latex texlive-collection-latexrecommended texlive-xetex-def texlive-collection-xetex latexmk texlive-biblatex-gost biber texlive-collection-latexextra texlive-impnattypo texlive-collection-langcyrillic

RUN dnf install -y http://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm && \
  fc-cache -fv

RUN sed -i '/=american/a russian ruhyphen.tex\n=userussian' /etc/texlive/tex/generic/config/language.dat && fmtutil-sys --all

WORKDIR /root
