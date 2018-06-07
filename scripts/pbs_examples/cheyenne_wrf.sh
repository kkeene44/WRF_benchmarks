#!/bin/bash
### Job Name
#PBS -N cheyenne_wrf
### Project code
#PBS -A SCSG0002
#PBS -l walltime=00:20:00
#PBS -q regular
### Merge output and error files
#PBS -j oe
### Select 2 nodes with 36 CPUs each for a total of 72 MPI processes
#PBS -l select=2:ncpus=36:mpiprocs=36
### Send email on abort, begin and end
#PBS -m abe
### Specify mail recipient
#PBS -M akirak@ucar.edu

export TMPDIR=/glade/scratch/$USER/temp
mkdir -p $TMPDIR

### Run the executable
mpiexec_mpt ./wrf.exe