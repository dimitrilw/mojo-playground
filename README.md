# mojo-playground

Playing around with Modular's Mojo 🔥 programming language.

This repo is just a collection of random snippets and experiments.

This readme is just a semi-chaotic list of notes and references
gathered while playing around with Mojo.

## MOJO_PYTHON_LIBRARY

I wrote a small script for a quick lazy calculation of "time till next upgrade"
in an idle game I was playing on the day I started playing with Mojo.
When doing `mojo imr-calc.🔥`, everything ran fine. And when I compiled
via `mojo build imr-calc.🔥`, I got a new binary called `imr-calc`.
Everything looked good until I tried to run the binary via `./imr-calc`.
Then I received the error:

```sh
Mojo/Python interoperability error: Unable to locate a suitable libpython,
please set `MOJO_PYTHON_LIBRARY`

zsh: segmentation fault  ./imr-calc
```

I assume this is because the Mojo code has the following lines:

```mojo
from python import Python as py
# ...more code...
 var dt = py.import_module("datetime")
```

Fix:

1. I installed Miniconda via `brew install --cask miniconda`.
2. I followed Modular's [instructions][mojo-conda] for using the Conda environment.

[mojo-conda]: https://docs.modular.com/mojo/manual/python/#set-up-a-python-environment-with-conda

## immediate tasks

- tidy this readme
- figure out configs
  - auto-formatting
  - tests
    - first, how really do them? Pytest work?
    - second, how auto-run in VS-Code to catch changes?
  - auto-completion in VS-Code
- packaging
  - package management
    - [mojopack](https://github.com/kernhanda/mojopack)
    - [pkm](https://github.com/Hammad-hab/pkm)
  - how to publish a package
- Mojo versions
  – How pin Mojo version? Is there a mojo.config file?
  - How switch versions? Is there a “nvm” type command?
- contrib to repos
  - [mojolings](https://github.com/dbusteed/mojolings), like rustlings
- VS-Code stuff
  - explore the features (like shortcuts) of the Mojo extension
  - ensure I have set-up Jupyter Notebook support
- Awesome Mojo repos
  - [mojicians](https://github.com/mojicians/awesome-mojo)
  - [ego](https://github.com/ego/awesome-mojo)

## future projects

I'd like to do a few little projects with Mojo.

- Discord bot
  - model on discord.py
    - [docs](https://discordpy.readthedocs.io/en/stable/)
    - [repo](https://github.com/Rapptz/discord.py)
- WASM compile for deployment to:
  - Fermyon Spin
  - Cloudflare Workers
- roguelike:
  - from bare-bones
  - as a "how to refactor py to mojo" exercise
- todo.app
- 2048 game
- Mojo website? Like, make a demo blog?
- search for other code samples to explore
- mojo mud server -- like Evennia, but in Mojo

## resources to check-out

This is where I'm dumping links to resources I want to check out when I have time.

- [style guide](https://github.com/modularml/mojo/blob/nightly/stdlib/docs/style-guide.md)
- [llama2.mojo](https://github.com/tairov/llama2.mojo)
- [Morrow](https://github.com/mojoto/morrow.mojo) = Arrow, in Mojo
- [py2mojo](https://github.com/msaelices/py2mojo) automated conversions
- [shims repo](https://github.com/lsh/shims)
- [mojo learning](https://github.com/rd4com/mojo-learning)
- [py2mojo](https://github.com/msaelices/py2mojo)
