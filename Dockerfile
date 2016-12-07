# Dockerfile for amber in a slurm cluster
FROM  ambermd/amber-build-box

# To get the AmberTools16.tar.bz file, fill out the form
# at the site below and click Download.
ADD AmberTools16.tar.bz2 USAGE.txt /usr/local/

ENV AMBERHOME=/usr/local/amber16/
ENV PATH=$AMBERHOME/bin:/root/miniconda3/bin/:$PATH
ENV LD_LIBRARY_PATH=$AMBERHOME/lib:$LD_LIBRARY_PATH
RUN yum update -y

RUN     cd ${AMBERHOME} \
    &&  ./update_amber --show-applied-patches \
    &&  ./update_amber --update \
    &&  ./update_amber --show-applied-patches \
    &&  ./configure --with-python `which python` -noX11 gnu \
    &&  . ${AMBERHOME}/amber.sh \
    &&  make -j4 install

ENV PYTHONPATH=${AMBERHOME}/lib/python3.5/site-packages:$PYTHONPATH
CMD ["more","/usr/local/USAGE.txt"]
