# Mmmm Cookies

Not the evil tracking type.

[Project Documentation](https://mmmm-cookies.readthedocs.io/)

### Main Branch Builds
- [![mmmm_cookies Push Container](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-container/badge.svg?branch=main)](https://github.com/niall-byrne/mmmm_cookies/actions)
- [![mmmm_cookies Push Generic](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-generic/badge.svg?branch=main)](https://github.com/niall-byrne/mmmm_cookies/actions)
- [![mmmm_cookies Push Wheel](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-wheel/badge.svg?branch=main)](https://github.com/niall-byrne/mmmm_cookies/actions)

### Production Branch Builds
- [![mmmm_cookies Push Container](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-container/badge.svg?branch=production)](https://github.com/niall-byrne/mmmm_cookies/actions)
- [![mmmm_cookies Push Generic](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-generic/badge.svg?branch=production)](https://github.com/niall-byrne/mmmm_cookies/actions)
- [![mmmm_cookies Push Wheel](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-push-wheel/badge.svg?branch=production)](https://github.com/niall-byrne/mmmm_cookies/actions)

### Release Automation
- [![mmmm_cookies Release Container](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-release-container/badge.svg)](https://github.com/niall-byrne/mmmm_cookies/actions)
- [![mmmm_cookies Release PyPi](https://github.com/niall-byrne/mmmm_cookies/workflows/mmmm_cookies-release-pypi/badge.svg)](https://github.com/niall-byrne/mmmm_cookies/actions)

### Documentation Builds
- [![Documentation Status](https://readthedocs.org/projects/mmmm_cookies/badge/?version=latest)](https://mmmm-cookies.readthedocs.io/en/latest/?badge=latest)

## Development Quick Start Guide

You'll need to install:
 - [Docker](https://www.docker.com/) 
 - [Docker Compose](https://docs.docker.com/compose/install/)

Build the development environment container (this takes a few minutes):
- `docker-compose build`

Start the environment container:
- `docker-compose up -d`

Spawn a shell inside the container:
- `./container`

## Development Tooling Reference

Inside the container you'll find the Development CLI:
- Run the CLI without arguments to see the complete list of available commands: `dev`
- For more details see the [pib_cli](https://pypi.org/project/pib-cli/) Python Package.
- [Customize](https://github.com/niall-byrne/mmmm_cookies/tree/main/assets/cli.yml) the CLI to suit your needs.

## Pre-Commit Git Hooks
The python library [pre-commit](https://pre-commit.com/) comes installed with a host of useful initial hooks:

## Default Installed Pre-Commit Hooks:
| Hook Name          | Description                                                                                                  |
| ------------------ | ------------------------------------------------------------------------------------------------------------ |
| check_container    | Encourages you to make commits inside the [PIB](https://github.com/niall-byrne/python-in-a-box) environment. |
| check_spelling     | Runs [aspell](http://aspell.net/) on your commit messages to prevent typos.                                  |
| commitizen         | Runs [commitizen](https://commitizen-tools.github.io/commitizen/) on your commit message to validate it.     |
| protected_branches | Runs additional tests for branches marked as important.                                                      |
| shellcheck         | Runs [shellcheck](https://www.shellcheck.net/) on your shell scripts.                                        |
| trufflehog         | Runs [TruffleHog](https://github.com/trufflesecurity/trufflehog) to scan for credential leaks.               |
| pyproject.toml     | Runs [tomll](https://github.com/Ainiroad/go-toml) on your TOML configuration file.                           |
| yamllint           | Runs [yamllint](https://github.com/adrienverge/yamllint) on your YAML configuration files.                   |

Most of these hooks use values from [local.env](https://github.com/niall-byrne/mmmm_cookies/tree/main/assets/local.env) file that can be customized.
Furthermore, the spell check script manages its own [word dictionary](https://github.com/niall-byrne/mmmm_cookies/tree/main/.aspell.pws) that you can customize. 

## Installing a virtual environment, and the CLI on your host machine

The [scripts/extras.sh](https://github.com/niall-byrne/mmmm_cookies/tree/main/scripts/extras.sh) script does this for you.

Source this script, and use the `dev` command on your host:
- `pip install poetry`
- `source scripts/extras.sh`
- `pib_setup_hostmachine` (to install the poetry dependencies)  
- `dev --help` (to run the cli outside the container)

This is most useful for making a local IDE (like [Pycharm](https://www.jetbrains.com/pycharm/)) aware of what Python packages are installed in your project.

> It is still always recommended to work with CLI commands inside the container, as you'll have access to the full managed Python environment.
