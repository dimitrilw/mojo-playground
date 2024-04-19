from testing import assert_equal, assert_raises

# local imports
from stuff import add_small_ints

fn test_add_ints() raises:
    assert_equal(add_small_ints(1, 2), 3)

fn test_add_limits() raises:
    with assert_raises(contains="Yippee!"):
        _ = add_small_ints(Int.MAX, 1)

fn main() raises:
    test_add_ints()
    test_add_limits()