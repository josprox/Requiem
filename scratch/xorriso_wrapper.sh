#!/bin/bash
echo "XORRISO CALLED WITH ARGS:" >> /mnt/c/Users/joss/Documents/proyectos/JossZilla/scratch/xorriso_args.txt
printf '%q ' "$@" >> /mnt/c/Users/joss/Documents/proyectos/JossZilla/scratch/xorriso_args.txt
echo "" >> /mnt/c/Users/joss/Documents/proyectos/JossZilla/scratch/xorriso_args.txt
exec /usr/bin/xorriso.real "$@"
