FROM phasecorex/red-discordbot:full

RUN apt-get update ; apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        sshpass \
        screen \
        libcairo2-dev \
    ; \
    rm -rf /var/lib/apt/lists/*;
