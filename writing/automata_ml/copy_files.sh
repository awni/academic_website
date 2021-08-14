#!/bin/bash

# To collect the book files:
# 1. Clone the repo https://github.com/awni/automata_ml
# 2. From the repo root run ./build.sh
# 3. From this directory run ./copy_files.sh

REPO=$HOME/papers/automata_ml/

# Copy html, figures, and latex pdfs:
cp ${REPO}/notebooks/*.html .
cp -r ${REPO}/notebooks/figures .
cp -r ${REPO}/latex/*.pdf .
mv main.pdf automata_in_machine_learning.pdf

cd ${REPO}

# Make individual notebook archives:
for nb in 'acceptors_and_transducers' 'basic_operations' 'advanced_operations' \
          'differentiation_with_automata' 'extended_examples'
do
    zip ${nb}.zip notebooks/${nb}.ipynb notebooks/README.md notebooks/*.py
    for fig in `grep -o 'figures/.*.svg' notebooks/${nb}.html`
    do
        zip ${nb}.zip notebooks/${fig}
    done
done

# Make all notebook archive:
zip notebooks.zip notebooks/*.ipynb
zip notebooks.zip notebooks/README.md
zip notebooks.zip notebooks/*.py
zip -r notebooks.zip notebooks/figures/

cd -
mv ${REPO}/*.zip .
