#!/bin/bash

if [[  $1 && $2 ]]
then 
prefix=$1
ut=$2
cat template.txt > $2
echo "<ca>" >> $2
cat ca.crt >> $2
echo "</ca>
<cert>" >> $2
sed -n '/BEGIN/,/END/p' $prefix.crt >> $2
echo "</cert>
<key>" >> $2
cat $prefix.key >> $2
echo "</key>" >> $2
else
echo "Usage: makeovpnconf.sh <InputFilePrefix> <OutputFileName>"
fi