grep "$1" words.txt | awk '{ print length, $0 }' | sort | cut -d" " -f2-
