FROM perl:slim
RUN apt-get -y update \
    && apt-get -y install --no-install-recommends gcc libc6-dev make \
    && apt-get clean \
    && cpanm -v --notest --no-man-pages \
        Perl::Tidy \
        Perl::Critic \
        Perl::Critic::Bangs \
        Perl::Critic::Deprecated \
        Perl::Critic::Dynamic \
        Perl::Critic::Freenode \
        Perl::Critic::Itch \
        Perl::Critic::Lax \
        Perl::Critic::logicLAB \
        Perl::Critic::Moose \
        Perl::Critic::More \
        Perl::Critic::Nits \
        Perl::Critic::Pulp \
        Perl::Critic::Storable \
        Perl::Critic::StricterSubs \
        Perl::Critic::Swift \
        Perl::Critic::Tics \
        Perl::Critic::TooMuchCode \
    && apt-get purge -y --auto-remove gcc libc6-dev make \
    && rm -rf \
        /root/.cpanm \
        /var/cache \
        /var/lib/apt/lists \
        /var/log

WORKDIR /app