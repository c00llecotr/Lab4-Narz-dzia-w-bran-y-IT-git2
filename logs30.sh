#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Podaj liczbę plików do utworzenia."
    exit 1
fi

num_files=$1

for ((i=1; i<=num_files; i++))
do
    file_name="log${i}.txt"
    echo "Nazwa pliku: $file_name" > "$file_name"
    echo "Nazwa skryptu: skrypt.sh" >> "$file_name"
    current_date=$(date +"%Y-%m-%d")
    echo "Data utworzenia: $current_date" >> "$file_name"
done
