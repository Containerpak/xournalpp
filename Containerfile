FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/xournalpp"

RUN apt-get update && \
    apt-get install -y --no-install-recommends xournalpp && \
    cpak-clean-junk

COPY com.github.xournalpp.xournalpp.desktop /usr/share/applications/com.github.xournalpp.xournalpp.desktop
