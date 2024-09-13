#!/bin/sh

exercise_files=$(tree -if --noreport exercises | grep '\.rs$')

for file in $exercise_files; do
  exercise=$(basename "$file" .rs)
  echo "Resetando $exercise..."
  rustlings reset "$exercise"
done

echo "Done."

