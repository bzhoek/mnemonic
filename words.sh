if readlink $0 >/dev/null 2>&1; then
	DIR="$(dirname $(readlink $0))"
else
	DIR="$(dirname $0)"
fi
echo $DIR

egrep -h "$1" "$DIR/words.txt" | awk '{ print length, $0 }' | sort | cut -d" " -f2-
