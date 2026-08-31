#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <path/to/file.tex>"
  exit 1
fi

mkdir -p pdf

pdflatex -output-directory=pdf "$1"