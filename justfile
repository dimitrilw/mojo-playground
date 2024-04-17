# mojo-playground/justfile

# https://just.systems/man/en/chapter_1.html

# ------------------------------------------------------------------------------
# CONFIG

set shell := ["bash", "-uc"]

# ------------------------------------------------------------------------------
# VARIABLES

# NODE_VERSION := "v16.13.2"

################################################################################
# RECIPES
################################################################################

# DEFAULT RECIPE WHEN USER DOES NOT GIVE A SPECIFIC RECIPE

@_default:
    echo "View file 'justfile' to see internals of any recipe."
    just --list --unsorted

# ------------------------------------------------------------------------------
# recipes yet to be added

# @run
# @test
# @build

# ------------------------------------------------------------------------------
# MISC

# Gather stats about the app's code size & todos.
@stats:
    ( \
        printf "\nTokei\n\n"; \
        tokei; \
        printf "\nTCount\n\n"; \
        tcount; \
        TD_NUM=$(rg TODO -g "!justfile" -g "!stats.txt" | wc -l | tr -s ' '); \
        printf "\n###########################################################################\n"; \
        printf "\nTodo: $TD_NUM\n"; \
        rg TODO -n -g "!justfile" -g "!stats.txt" || echo "none"; \
    ) > stats.txt && bat stats.txt