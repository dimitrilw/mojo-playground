# mojo-playground

Playing around with Modular's
[Mojo🔥 programming language](https://www.modular.com/max/mojo).

This repo is just a collection of random snippets and experiments.

This readme is just a semi-chaotic list of notes and references
gathered while playing around with Mojo.

The `/notes` directory contains additional misc notes & snippets. I'll move
things there as appropriate.

## immediate tasks

- finish watching all Youtube videos in my Mojo playlist
- read the backlog of articles at:
  - [Modular newsletters](https://www.modular.com/newsletters)
  - [mojo-dojo](https://mojodojo.dev/)
  - [joy of mojo](https://joyofmojo.com/)
- figure out configs
  - auto-formatting
  - tests ...[Mojo's testing](https://docs.modular.com/mojo/stdlib/testing/testing)
    seems rather bare-bones. So, what are the real best practices?
    - first, are there any Mojo-native testing frameworks?
      Or is everybody using Pytest?
    - second, set-up VS-Code like Google's Go extension to auto-run and make the
      entire output all pretty: per-test lights, linkage to code lines, etc.
    - any doctest like capability?
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
- convert some of my old repos to Mojo -- remember to check Gitlab & Bitbucket
- Awesome Mojo repos
  - [mojicians](https://github.com/mojicians/awesome-mojo)
  - [ego](https://github.com/ego/awesome-mojo)
  - [mojo is awesome](https://github.com/mfranzon/mojo-is-awesome)
- redo [Advent of Code](https://adventofcode.com/) in Mojo
- has anybody made a Package Wishlist of stuff they want to see in Mojo?

## future projects

I'd like to find packages for stuff below. If I cannot find anything,
then perhaps I need to contribute and help build a few Mojo projects.

- Discord bot
  - model on discord.py
    - [docs](https://discordpy.readthedocs.io/en/stable/)
    - [repo](https://github.com/Rapptz/discord.py)
- WASM compile for deployment to Fermyon Spin, Cloudflare Workers, etc.
- roguelike:
  - from bare-bones
  - as a "how to refactor py to mojo" exercise with a py roguelike
- todo.app
- 2048 game
- Mojo website? Like, make some demo blog or something just to show Mojo Django,
  or whatever.
- mojo mud server -- like Evennia, but in Mojo
- cli framework, like Typer for Mojo ...probably need Arg-Parse first
- geo-spatial toys, like Mojo packages for:
  - GDAL
  - H3 -- here's the [python h3 package](https://github.com/uber/h3-py/)
- logging framework
- regex

## code challenges

- perhaps do local setup with CodeAbbey for solving via Mojo? At least until
  LeetCode & others start supporting Mojo.
  - [directions](https://www.codeabbey.com/index/wiki/running)

## resources to check-out

This is where I'm dumping links to resources I want to check out when I have time.

- [style guide](https://github.com/modularml/mojo/blob/nightly/stdlib/docs/style-guide.md)
- [llama2.mojo](https://github.com/tairov/llama2.mojo)
- [Morrow](https://github.com/mojoto/morrow.mojo) = Arrow, in Mojo
- [py2mojo](https://github.com/msaelices/py2mojo) automated conversions
- [shims repo](https://github.com/lsh/shims)
- [mojo learning](https://github.com/rd4com/mojo-learning)
- [py2mojo](https://github.com/msaelices/py2mojo)
- [Mojo Types repo](https://github.com/Moosems/Mojo-Types)
- [learn mojo](https://github.com/better-mojo/learn-mojo)

## misc notes

Neither [tokei](https://github.com/XAMPPRocky/tokei)
nor [tcount](https://github.com/RRethy/tcount)
appear to support Mojo as of 17-Apr-2024.
