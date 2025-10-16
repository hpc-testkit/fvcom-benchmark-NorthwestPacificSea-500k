#!/bin/bash
HOST='spr-cu03,spr-cu04'

NNODE=$1
PPN=$2
NPROC=$[ ${PPN} * ${NNODE} ]
export I_MPI_DEBUG=5

LOGFILE=FVCOM_DEBUG.001.log
(time mpirun -n ${NPROC} -hosts ${HOST} ./fvcom --casename=hr --dbg_par) &> ${LOGFILE}
