FROM phasecorex/red-discordbot

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        sshpass \
    ; \
    rm -rf /var/lib/apt/lists/*;
