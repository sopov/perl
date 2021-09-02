# Docker Perl Tools

Contains the following tools:
* `perl` from [perl:slim](https://hub.docker.com/_/perl)
* [`perltidy`](https://metacpan.org/dist/Perl-Tidy/view/bin/perltidy)
* [`perlcritic`](https://metacpan.org/dist/Perl-Critic/view/bin/perlcritic)

# How to launch

## perl

```bash
docker run --rm -it \
    -v "$PWD":/app \
    lsopov/perl perl script.pl
```

## perltidy

```bash
docker run --rm -it \
    -v "$PWD":/app \
    lsopov/perl perltidy -pbp script.pl
```

## perlcritic

You might need to create a .perlcriticrc or download an [example](https://metacpan.org/release/PETDANCE/Perl-Critic-1.140/source/examples/perlcriticrc) (or for [PBP](https://metacpan.org/release/PETDANCE/Perl-Critic-1.140/source/examples/perlcriticrc-conway))

```bash
docker run --rm -it \
    -v "$PWD":/app \
    -v "$HOME/.perlcriticrc":/root/.perlcriticrc \
    lsopov/perl perlcritic script.pl
```

## Using aliases

Add to `.bashrc` or `.zshrc` or to other.

```bash
alias perltidy='docker run --rm -it -v "$PWD":/app lsopov/perl perltidy'
alias perlcritic='docker run --rm -it -v "$PWD":/app -v "$HOME/.perlcriticrc":/root/.perlcriticrc lsopov/perl perlcritic'
```

# Details
Also [Perl::Critic](https://metacpan.org/pod/Perl::Critic) modules are installed:
* [Perl::Critic::Bangs](https://metacpan.org/pod/Perl::Critic::Bangs)
* [Perl::Critic::Deprecated](https://metacpan.org/pod/Perl::Critic::Deprecated)
* [Perl::Critic::Dynamic](https://metacpan.org/pod/Perl::Critic::Dynamic)
* [Perl::Critic::Freenode](https://metacpan.org/pod/Perl::Critic::Freenode)
* [Perl::Critic::Itch](https://metacpan.org/pod/Perl::Critic::Itch)
* [Perl::Critic::Lax](https://metacpan.org/pod/Perl::Critic::Lax)
* [Perl::Critic::logicLAB](https://metacpan.org/pod/Perl::Critic::logicLAB)
* [Perl::Critic::Moose](https://metacpan.org/pod/Perl::Critic::Moose)
* [Perl::Critic::More](https://metacpan.org/pod/Perl::Critic::More)
* [Perl::Critic::Nits](https://metacpan.org/pod/Perl::Critic::Nits)
* [Perl::Critic::Pulp](https://metacpan.org/pod/Perl::Critic::Pulp)
* [Perl::Critic::Storable](https://metacpan.org/pod/Perl::Critic::Storable)
* [Perl::Critic::StricterSubs](https://metacpan.org/pod/Perl::Critic::StricterSubs)
* [Perl::Critic::Swift](https://metacpan.org/pod/Perl::Critic::Swift)
* [Perl::Critic::Tics](https://metacpan.org/pod/Perl::Critic::Tics)
* [Perl::Critic::TooMuchCode](https://metacpan.org/pod/Perl::Critic::TooMuchCode)
