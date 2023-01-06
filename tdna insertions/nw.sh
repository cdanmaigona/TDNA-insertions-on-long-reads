#BSUB -L /bin/bash                  # use bash for job's execution environment
#BSUB -J Loreta_2                   # job name
#BSUB -n 20                         # assigns 20 total cores for execution
#BSUB -R "span[ptile=20]"           # assigns 20 cores per node
#BSUB -R "rusage[mem=2700]"         # reserves 2700MB memory per core
#BSUB -M 2700                       # sets to 2700MB per process enforceable memory
#BSUB -W 48:00                      # sets to 24 hour the job's runtime wall-clock limit
#BSUB -o stdout.%J                  # directs the job's standard output to stdout.jobid
#BSUB -e stderr.%J                  # directs the job's standard error to stder

module load SAMtools/1.10-GCC-9.3.0
module load minimap2/2.17-GCCcore-9.3.0
module load seqtk/1.3-GCC-9.3.0
module load canu/1.9-GCCcore-8.3.0-Java-11
module load EMBOSS/6.6.0-GCCcore-6.3.0
module load BEDTools/2.29.2-GCC-9.3.0
module load parallel/20200522-GCCcore-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
module load BLAST+/2.11.0-gompi-2020a
module load Pillow/6.2.1-GCCcore-8.3.0

python3 run_all.py -f /scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/tdna_nanopore/fastq/ \
-o /scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/tdna_nanopore/Mut1_output/ \
-t /scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/tdna_nanopore/references/tdna.fas.gz \
-a /scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/tdna_nanopore/references/all_fasta.fas.gz \
-w /scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/tdna_nanopore/Mut1_html/
