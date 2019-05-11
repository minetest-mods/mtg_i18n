#! /bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")/..";

find locale -name '*.po' | while read -r file; do

sed -i -e '1i\# textdomain: mtg_i18n\' $file
sed -i -e '7,8d' $file
sed -i -e's/msgid "//g' $file
sed -i -e ':a;N;$!ba;s/"\nmsgstr "/=/g' $file
sed -i -e "/^#:/d" $file
sed -i -e "/^$/d" $file
sed -i -e'7,20s/^"/\#\"/1' $file
sed -i -e'/^#/! s/"//g' $file

mv $file `echo $file | sed 's/po/tr/ '| sed 's/\//\/mtg\_i18n\./' `

done
