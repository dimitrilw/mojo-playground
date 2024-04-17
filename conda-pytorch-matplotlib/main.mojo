from python import Python as py

fn main() raises:
    var torch = py.import_module("torch")
    var x = torch.linspace(0, 10, 100)
    var y = torch.sin(x)
    plot(x, y)

# TODO: refactor from def to fn, which will require a lot of _ handling
# to the PythonObject return values
def plot(x: PythonObject, y: PythonObject) -> None:
    var plt = py.import_module("matplotlib.pyplot")
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("Plot of y = sin(x)")
    plt.grid(True)
    plt.show()