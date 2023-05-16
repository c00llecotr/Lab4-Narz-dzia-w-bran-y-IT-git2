#!/bin/bash

for ((i=1; i<=100; i++))
do
    file_name="log${i}.txt"
    echo "Nazwa pliku: $file_name" > "$file_name"
    echo "Nazwa skryptu: skrypt.sh" >> "$file_name"
    current_date=$(date +"%Y-%m-%d")
    echo "Data utworzenia: $current_date" >> "$file_name"
done
