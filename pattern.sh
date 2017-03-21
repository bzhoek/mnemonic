( grep "$1" OpenTaal-210G-basis-gekeurd.txt ; grep "$1" OpenTaal-210G-flexievormen.txt ) | awk '{ print length, $0 }' | sort | cut -d" " -f2-
