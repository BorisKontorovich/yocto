#! /bin/bash

# # This script is the entrypoint for the container. It is responsible for
# # starting the application.

# source /home/dev/yocto/source/poky/oe-init-build-env /home/dev/yocto/custom

# # exec "$@"

#!/bin/bash

# This script is the entrypoint for the container. It is responsible for
# starting the application.

echo "Sourcing the environment setup script..."
if [ -f /home/dev/yocto/source/poky/oe-init-build-env ]; then
    source /home/dev/yocto/source/poky/oe-init-build-env /home/dev/yocto/custom
    echo "Sourced successfully."
else
    echo "File /home/dev/yocto/source/poky/oe-init-build-env not found."
fi

# Execute the passed command or start a shell
exec "$@"