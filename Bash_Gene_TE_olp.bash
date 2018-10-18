#!/bin/bash

# python should be python 3.0 or >

# $1 needs to look like
#chr1    257701  257800  hypo    0       +
#chr1    696501  696600  hypo    0       +


GENEMAP="/Users/mac/Desktop/Github/Gene_and_TE_mapper"

python $GENEMAP/Gene_overlap.py -Gene_gb 1 -in $1 > ${1%.DMR.bed}.Genes.gb.txt

python $GENEMAP/Gene_overlap.py -Gene_po 1 -prom_len 500 -in $1 > ${1%.DMR.bed}.Genes.po.txt

python $GENEMAP/Gene_overlap.py -TE_gb 1 -in $1 > ${1%.DMR.bed}.TE.gb.txt

python $GENEMAP/Gene_overlap.py -TE_po 1 -prom_len 500 -in $1 > ${1%.DMR.bed}.TE.po.txt