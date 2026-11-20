set shell := ["bash", "-euo", "pipefail", "-c"]

# Lists the commands.
default:
    @just --list

# Checks task formatting and local documentation/cover links without a build.
check:
    just --fmt --check
    lychee --offline --include-fragments=anchor-only '**/*.md'

# Runs the full validation.
verify: check
