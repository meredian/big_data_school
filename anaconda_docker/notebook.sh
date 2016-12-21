#!/bin/bash

# Strict mode
set -euo pipefail

# Set configuration defaults
: ${PASSWORD:=""}

# Create the hash to pass to the IPython notebook, but don't export it so it doesn't appear
# as an environment variable within IPython kernels themselves
HASH=$(python -c "from IPython.lib import passwd; print(passwd('${PASSWORD}'))")
unset PASSWORD

jupyter  notebook --no-browser --port 8888 --ip=* --NotebookApp.password="$HASH"

unset HASH
