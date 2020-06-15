FROM phasecorex/red-discordbot

RUN set -eux; \
# Install popular cog dependencies
    apt-get update; \
    apt-get install -y --no-install-recommends \
        # NotSoBot
        libmagickwand-dev \
        libaa1-dev \
        # CrabRave
        ffmpeg \
        imagemagick \
    ; \
    # CrabRave needs this policy removed
    sed -i '/@\*/d' /etc/ImageMagick-6/policy.xml; \
    rm -rf /var/lib/apt/lists/*;

RUN apt-get update ; apt-get upgrade -y; \
    apt-get install -y --no-install-recommends \
        sshpass \
        screen \
        libcairo2-dev \
    ; \
    rm -rf /var/lib/apt/lists/*;
