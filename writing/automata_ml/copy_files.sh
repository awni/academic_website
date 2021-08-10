#!/bin/bash

REPO=$HOME/papers/automata_ml/

cp ${REPO}/notebooks/*.html .
cp -r ${REPO}/notebooks/figures .
cp -r ${REPO}/latex/*.pdf .
mv main.pdf automata_in_machine_learning.pdf

cd ${REPO}
zip notebooks.zip notebooks/*.ipynb
zip notebooks.zip notebooks/README.md
zip notebooks.zip notebooks/*.py
zip -r notebooks.zip notebooks/figures/
cd -
mv ${REPO}/notebooks.zip .
