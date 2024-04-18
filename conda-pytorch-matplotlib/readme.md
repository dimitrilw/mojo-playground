# conda-pytorch-matplotlib

This folder follows
[this Modular demo video](https://www.youtube.com/watch?v=bmpjT0T4IDY).

Install Conda. Google for instructions.

Create a new Conda environment with:

```bash
conda create -n mojo-plotter python=3.12 pytorch matplotlib
```

After creating the environment, activate it with:

```bash
conda activate mojo-plotter
```

Then run the program with:

```bash
mojo main.mojo
```

Next, export the Conda environment via:

```bash
conda env export --from-history | grep -v "^prefix:" > environment.yaml
```

This results in an environment.yaml file without the `prefix` line.

Now the Conda environment can be recreated with:

```bash
conda env create -f environment.yaml
conda activate mojo-plotter
```

The video then gives this auto-set/unset config:

```bash
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
export MOJO_PYTHON_LIBRARY="$(find $CONDA_PREFIX/lib -iname 'libpython*.[s,d]*' | sort -r | head -n 1)"
echo "export MOJO_PYTHON_LIBRARY=\"$MOJO_PYTHON_LIBRARY\"" > $CONDA_PREFIX/etc/conda/activate.d/export-mojo.sh

mkdir -p $CONDA_PREFIX/etc/conda/deactivate.d
echo "unset MOJO_PYTHON_LIBRARY" > $CONDA_PREFIX/etc/conda/deactivate.d/unset-mojo.sh
```

However, I'm not sure that this is necessary. When I ran `mojo main.mojo` without
setting the `MOJO_PYTHON_LIBRARY` variable, it worked fine. My system seemed to
correctly pass Mojo to the correct Conda environment. So until I have a reason
to set this variable, I'm going to leave it alone.

Of note: if you wish to clean up after yourself, you can remove the Conda
environment with:

```bash
conda remove -n mojo-plotter --all
```

And if you need to clear package caches, then run:

```bash
conda clean --all
```
