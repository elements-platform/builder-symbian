FROM ubuntu:21.04 as megacmd

RUN apt update && \
    apt install -y wget && \
    wget -O /megacmd.deb https://mega.nz/linux/MEGAsync/xUbuntu_21.04/amd64/megacmd-xUbuntu_21.04_amd64.deb && \
    apt install -y /megacmd.deb && \
    apt remove -y wget && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm /megacmd.deb

COPY ./get_mega_binaries.sh /


FROM megacmd as binaries

RUN mkdir /binaries

RUN /get_mega_binaries.sh /binaries


FROM binaries as sdk

RUN mkdir /sdk


FROM ubuntu:21.04

COPY --from=sdk /sdk /sdk
