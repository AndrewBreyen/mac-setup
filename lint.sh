#!/bin/bash

set -e

echo "##################"
echo "### Linting"
echo "##################"

# Uncomment the following block to check for 'breakpoint'
# if [[ ! -z $(grep -rl --exclude="lint.sh" 'breakpoint' .) ]]; then
#     echo
#     echo -e "Breakpoint found in the following files:"
#     echo
#     grep -rn --exclude="lint.sh" 'breakpoint' .
#     echo
#     exit 1
# fi

options="${1:-}"

echo "Linting markdown files"
if output=$(markdownlint . --config .mdlrc . $options); then
  echo "Success"
else
  echo "Failure (Exit code: $?)"
  echo "$output"
  exit 1
fi