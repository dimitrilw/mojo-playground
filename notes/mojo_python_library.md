# MOJO_PYTHON_LIBRARY

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
