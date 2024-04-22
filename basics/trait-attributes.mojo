trait HasMojo:
    # LSP responds: TODO fields in traits are not supported yet
    # var mojo: Bool

    # Traits can have aliases, but they are not required by the implementor
    # in order to fulfill the trait's requirements. Nor are they "passed"
    # to the implementor via some kind of Pythonic inheritance.
    # Rather, they appear to exist just to help with internals of the trait,
    # even if you can ref them outside the trait, as shown in getMojo().
    alias MOJO = True 

    pass

@value
struct ThisScript(HasMojo):
    fn getMojo(self) -> Bool:
        """ Note that this could be a staticmethod, but I'm leaving it with
            the self parameter in-place as use by the commented-out line below.
        """
        # LSP responds: 'ThisScript' value has no attribute 'MOJO'
        # return self.MOJO

        return HasMojo.MOJO

fn main():
    var s = ThisScript()
    print(s.getMojo())