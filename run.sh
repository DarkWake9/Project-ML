##SBATCH --account=vibhavasu.phy.iith
#SBATCH --job-name=ml           ## Name of the job
#SBATCH --output=ml.out    ## Output file
#SBATCH --error=ml.err     ## Error file
#SBATCH --nodes=1              ## Number of nodes
#SBATCH --ntasks-per-node=20    ## Number of tasks per node

#SBATCH --gres=gpu:1

#SBATCH --time=3-23:59:59
#SBATCH --mail-user=vibhavasu2018@gmail.com
#SBATCH --mail-type=ALL

## Load the python interpreter
## module load python
cd /scratch/vibhavasu.phy.iith/Project-ML
## module load conda
conda activate vibenv
## Execute the python script and pass the argument/input '90'
python task3.py