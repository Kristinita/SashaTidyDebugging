# Recursive glob:
# https://unix.stackexchange.com/a/49917/237999
shopt -s globstar
for i in **/*.html; do
	tidy -mq --wrap 0 $i
	echo $i
done