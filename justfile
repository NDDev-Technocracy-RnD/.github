set shell := ["bash", "-euo", "pipefail", "-c"]

# Lists the commands.
default:
    @just --list

# Checks the command file without building.
check:
    just --fmt --check

# Runs the full validation.
verify: check
