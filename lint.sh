#!/bin/bash

set -e

echo "##################"
echo "### Linting"
echo "##################"


if [[ ! -z $(grep -rl --exclude="lint.sh" 'breakpoint' .) ]]; then
    echo
    echo -e "Breakpoint found in the following files:"
    echo
    $(grep -rl --exclude="lint.sh" 'breakpoint' .)
    echo
    exit 1
fi

echo "No breakpoints found in the codebase."



echo "Linting markdown files"
markdownlint .
