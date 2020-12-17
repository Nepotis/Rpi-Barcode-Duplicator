while :
do
  read bc 
  zpl=1 "^XA"
  zpl=2 "~TA000~JSN^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR4,4^MD15^LRN^CI0"
  zpl=3 "^MMT"
  zpl=4 "^PW600"
  zpl=5 "^LL0224"
  zpl=6 "^LS0"
  zpl=7 "^BY4,3,111^FT34,135^BCN,,Y,N"
  zpl=8 "^FD>"
  zpl=9 "^FS^XZ"
  fullzpl=$zpl1$zpl2$zpl3$zpl4$zpl5$zpl6$zpl7$zpl8$bc$zpl9 #This inserts the variable bc in two places in the script, once for the custom interpretation line and once for the Code 128 barcode.  See the README.md file for details.
  echo $fullzpl
  echo $fullzpl > /tmp/bc.txt
  lp -dZebra -o raw /tmp/bc.txt
done
