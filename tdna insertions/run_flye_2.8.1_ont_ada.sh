#BSUB -L /bin/bash
#BSUB -J Flye_arabidopsis
#BSUB -o stdout.%J
#BSUB -e stderr.%J
#BSUB -n 20
#BSUB -R "span[ptile=20]"
#BSUB -R "rusage[mem=12300]"
#BSUB -M 12300
#BSUB -R "select[mem256gb]"
#BSUB -W 168:00

module load Flye/2.8.1-intel-2019b-Python-3.7.4

<<README
    - Flye manual: https://github.com/fenderglass/Flye/blob/flye/docs/USAGE.md
README

################################### VARIABLES ##################################
# TODO Edit these variables as needed:
########## INPUTS ##########
sequence_reads='/scratch/group/mpmi/Catherine/Dexian_TDNA_nanopore/Mut1.fastq.gz'

######## PARAMETERS ########
input_type='--nano-raw'
threads=$LSB_MAX_NUM_PROCESSORS

########## OUTPUTS #########
out_dir='out_flye_d'

################################### COMMANDS ###################################
# 
flye $input_type $sequence_reads --out-dir $out_dir --threads $threads

<<CITATION
    - Acknowledge TAMU HPRC: https://hprc.tamu.edu/research/citations.html

    - Flye: Mikhail Kolmogorov, Jeffrey Yuan, Yu Lin and Pavel Pevzner,
            "Assembly of Long Error-Prone Reads Using Repeat Graphs",
            Nature Biotechnology, 2019 doi:10.1038/s41587-019-0072-8
CITATION
