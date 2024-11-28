for file in *.txt; do
 	sudo mv "$file" "${file%.txt}.bak"
	echo "se ha cambiado el formato de los archivos"
done
