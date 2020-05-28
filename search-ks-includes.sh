#!/bin/sh
#
# Quick to recurse includes required by kickstart files
#
STACK=$(mktemp /tmp/stack.XXX)
touch $STACK.done

echo -n "$1" > $STACK


while [ -s $STACK ]; do
	F=$(head -1 $STACK)
	sed -i '1d' $STACK
	echo $F >> $STACK.done
	for I in $(grep '^%include ' $F | awk '{print $2}'); do
		if ! grep -q "^${I}$" $STACK.done; then
			echo $I >> $STACK
		fi
	done
done

cat $STACK.done
rm $STACK $STACK.done


