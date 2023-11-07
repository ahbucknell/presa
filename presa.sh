#!/usr/bin/env bash

while getopts f flag
do
  case "${flag}" in
    f) file=${OPTARG};;
  esac
done

echo "File: $file"



