#!/bin/bash

# find the most recently modified .tex file in the tex/ directory
LATEST_TEX=$(ls -t tex/*.tex 2>/dev/null | head -n 1)

if [ -z "$LATEST_TEX" ]; then
  echo "Error: No .tex files found in the tex/ directory."
  exit 1
fi

echo "Compiling: $LATEST_TEX"

mkdir -p pdf

pdflatex -output-directory=pdf "$LATEST_TEX"