FROM phasecorex/red-discordbot:full

RUN apt-get update ; apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        sshpass \
    ; \
    rm -rf /var/lib/apt/lists/*;
