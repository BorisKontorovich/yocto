# Docker based yocto build setup

Requirements
1. Need to have docker engine 27.1.1 or later installed.
1. Clone using<br>
```git clone --recurse-submodules -b main git@github.com:BorisKontorovich/yocto-docker.git```

1. Project folder structure and some explantions:

    ```
    yocto-docker_
                 |_build (This is generated and not in repo)
                 |
                 |_custom (This is custom configuration files, its a git submodule)
                 |        (so your docker has to be updated with proper folder name)
                 |
                 |_source (Contains Poky as git submodule)
                 |_utils (Docker related utilities)
    ```

Usage:
1. Source ./utils/aliases.bash<br>
```$. ./utils/alieases.bash```
1. Build docker image<br>
```$ bld```
1. Run docker image<br>
```$ up```
1. Connect to container<br>
```$ exe```
1. Configuration files are in ./build/conf  This folder is part of editable configuration that is part of repository. Everything else inside this folder is generated and will be discarded. Idea is that eventually custom setup will be part of submodule.
1. Use yocto to compile you image inside contianer (see yocto tutorials.)
    To run bitbake
    1. Source oe<br>
    ```$ source ./source/poky/oe-init-build-env ```
    1. bitbake<br>
    ```$ bitbake core-image-minimal```
1. To exit container propmt<br>
```$ exit```
1. Shutdown container when done<br>
```$ dwn```

