# Docker based yocto build setup

Requirements
1. Need to have docker engine installed 

Usage
1. Source ./utils/aliases.bash<br>
```$. ./utils/alieases.bash```
2. Build docker image<br>
```$ bld```
3. Run docker image<br>
```$ up```
4. Connect to container<br>
```$ exe```
5. Use yocto to compile you image inside contianer (see yocto tutorials.)
6. Configuration files are in ./build/conf  This folder is part of editable configuration that is part of repository. Everything else inside this folder is generated and will be discarded.
5. When done<br>
```$ dwn```