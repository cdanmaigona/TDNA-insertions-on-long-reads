#!/bin/bash

python3 run_all.py -f /home/catherine/tdna_nanopore/fastq \
-o /home/catherine/tdna_nanopore/yan_output_flye \
-t /home/catherine/tdna_nanopore/references/tdna.fas \
-a /home/catherine/tdna_nanopore/references/all_fasta.fas \
-w /home/catherine/tdna_nanopore/yan_output_flye/yan_output.flye.html \
-g /home/catherine/tdna_nanopore/fasta3
