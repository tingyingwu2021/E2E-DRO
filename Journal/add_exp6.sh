#!/bin/sh
#
# DR E2E Portfolio Construction script for Slurm
#
#SBATCH --account=dsi       # The account name for the job.
#SBATCH --job-name=e2edro   # The job name.
#SBATCH --cpus-per-task=6   # The number of cpu cores to use.
#SBATCH --time=72:00:00    # The time the job will take to run.
#SBATCH --mem-per-cpu=6gb   # The memory the job will use per cpu core.
#SBATCH --array=4-5         # job array
 
module load anaconda

#Command to execute Python program
python add_exp6_${SLURM_ARRAY_TASK_ID}.py

#End of script