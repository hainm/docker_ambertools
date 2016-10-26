# docker_ambertools

This repo is for testing out the prospects of generating a docker image
for AmberTools (http://ambermd.org).

See also lachele/ambertools on Docker Hub.

# How to run?
1. [Install docker](https://docs.docker.com/engine/installation/)

    - [osx](https://docs.docker.com/docker-for-mac/)
    - [linux](https://docs.docker.com/engine/installation/#/on-linux)

2. Example
```bash
git clone https://github.com/Amber-MD/docker_ambertools
cd docker_ambertools
# build prmtop and rst7 by using tleap
bash testin/run_AT.bash "tleap -f testin/Aglycons.leapin"
# run minimization with sander.MPI
bash testin/run_AT.bash "./testin/RUN.sh"
```

# How to build?
```bash
git clone https://github.com/Amber-MD/docker_ambertools
cd docker_ambertools
cp /path/to/AmberTools/tar/file .
# change "AmberTools16.tar.bz2" in Dockerfile to given ambertools version
docker build .
```

# How to push
`Place holder`
