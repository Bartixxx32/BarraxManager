FROM phasecorex/red-discordbot

RUN apt-get update; \
    apt-get install -y --no-install-recommends \
        # NotSoBot
        libmagickwand-dev \
        libaa1-dev \
        # CrabRave
        ffmpeg \
        imagemagick \
        
RUN apt-get update ; apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        sshpass \
        screen \
        libcairo2-dev \
    ; \
    rm -rf /var/lib/apt/lists/*;
