# docker_ambertools

This repo is for testing out the prospects of generating a docker image
for AmberTools (http://ambermd.org).

See also lachele/ambertools on Docker Hub.

# How?
1. [Install docker](https://docs.docker.com/engine/installation/)
2. Example
```bash
git clone https://github.com/Amber-MD/docker_ambertools
cd docker_ambertools
# build prmtop and rst7 by using tleap
bash testin/run_AT.bash "tleap -f testin/Aglycons.leapin"
# run minimization with sander.MPI
bash testin/run_AT.bash "./testin/RUN.sh"
```

