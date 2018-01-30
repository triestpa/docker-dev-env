# Dockerized Development Environment

Goal - A personalized, portable development environment, in order to simplify moving between local development and remote development with a standardized configuration.

To use this image, you can either clone this repository and build it from the `Dockerfile`, or run `docker pull triestpa/dev-env`. 

Includes:
- [Ubuntu 16.04](https://hub.docker.com/_/ubuntu/) as the base image.
- [Fish shell](https://fishshell.com/) with [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) plugin framework and the [Godfather](https://github.com/oh-my-fish/theme-godfather) theme.
- [Vim](http://www.vim.org/) and [Neovim](https://neovim.io/) with the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager, [base16-dark](https://github.com/chriskempson/base16-vim) color scheme, and a full configuration based loosely on ["The Ultimate Vim Configuration](https://github.com/amix/vimrc).
- [NVM](https://github.com/creationix/nvm), defaulting to using Node v8.
- [Python](https://www.python.org/) 2 and 3, with [Pip](https://pypi.python.org/pypi/pip).
- [Scipy](https://www.scipy.org/) stack (currently disabled, due to it's effect on image size).
- CLI clients for [Redis](https://redis.io/) and [Postgres](https://www.postgresql.org/). 
- Standard utilities including [curl](https://curl.haxx.se/), [wget](https://www.gnu.org/software/wget/), [git](https://git-scm.com/), and [tmux](https://github.com/tmux/tmux).

Also included is a `docker-compose` file for launching the dev environment alongside database containers.

A bash script called `denv.sh` is included in the repo to simplify launching specific programs in the container from the host system.

For instace, to run a Python script inside the container -
`denv.sh python3 script.py`

On my primary machines, I make `denv` an executable and add it to my path, so that it can be run from anywhere.

This is largely a personal productivity project, but please feel free to use it, or to fork it for your own usage.

