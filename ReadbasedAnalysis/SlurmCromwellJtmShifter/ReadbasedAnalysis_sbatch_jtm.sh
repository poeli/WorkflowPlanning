#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=1800:00
#SBATCH --output=/global/cfs/projectdirs/m3408/aim2/metagenome/ReadbasedAnalysis/ReadbasedAnalysis.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task 8
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=poe.paul.li@gmail.com
#SBATCH --constraint=haswell
#SBATCH --account=m3408
#SBATCH --job-name=

#OpenMP settings:
#export OMP_NUM_THREADS=8
#export OMP_PLACES=threads
#export OMP_PROC_BIND=spread

cd /global/cfs/projectdirs/m3408/aim2/metagenome/ReadbasedAnalysis

export JTM_HOST_NAME=cori

# starting JTM
source /global/cfs/projectdirs/m3408/aim2/metagenome/venv/bin/activate_jtm.sh
jgi-task-manager &
sleep 10
jtm-worker -tp aim2_test_pool &

java -XX:ParallelGCThreads=4 \
     -Dconfig.file=ReadbasedAnalysis_cromwell_jtm.conf \
     -jar /global/common/software/m3408/cromwell-45.jar \
     run -i ReadbasedAnalysis_inputs.json ReadbasedAnalysis.wdl

