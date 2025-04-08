#!/bin/bash
#SBATCH --account=eel6763
#SBATCH --qos=eel6763
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --ntasks-per-socket=1
#SBATCH --mem-per-cpu=500mb
#SBATCH -t 00:05:00
#SBATCH -o outfile
#SBATCH -e errfile
export OMP_NUM_THREADS=8
srun --mpi=$HPC_PMIX ./miniMD_openmpi
