from python import Python as py

fn main() raises:
    var torch = py.import_module("torch")
    var x = torch.linspace(0, 10, 100)
    var y = torch.sin(x)
    plot_def(x, y)
    # plot_fn(x, y)

def plot_def(x: PythonObject, y: PythonObject) -> None:
    """ Original code using def.
    """
    var plt = py.import_module("matplotlib.pyplot")
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("Plot of y = sin(x)")
    plt.grid(True)
    plt.show()

fn plot_fn(x: PythonObject, y: PythonObject) raises -> None:
    """ Code refactored using fn.

        Of note: the refactor was literally just changing def to fn
        and adding 'raises' to the signature. This compiles and runs
        without issue.

        At the time the demo vid was created, there was mention of having
        to handle PythonObject returns, but I did not have to do that at all.
        Perhaps Mojo was updated to auto-handle whatever the instructor
        was referring to.

        Also of note: hyperfine shows the fn version is slightly faster.
        Slightly over 1.1% faster.
    """
    var plt = py.import_module("matplotlib.pyplot")
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("Plot of y = sin(x)")
    plt.grid(True)
    plt.show()