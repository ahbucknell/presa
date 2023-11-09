#!/usr/bin/env bash

# Saved file flag argument and check no others are used.
while getopts ":f:o:" flag; do
  case $flag in
    f)
      file_name="$OPTARG";;
    o)
      output_dir="$OPTARG";;
    *)
      echo "Usage: $0 [-fo] [-f input] [-o output]"
      exit 1;;
  esac
done


if ! [[ $# -ne 2 ]]
then
  echo 1>&2 "Minimum argiuments (-fo) not passed."
  exit 1
fi

# Check for correct amino acid FASTA file types
if ! [[ "$file_name" =~ ^.*\.(fasta|fas|fa|faa|mpfa)$ ]]  
then
  echo "Incorrect file type: use one of the following: .fasta, .fas, .fa, .faa, .mpfa"
  exit 1
fi

echo "Input file: $file_name"
echo "Output dir: $output_dir"
