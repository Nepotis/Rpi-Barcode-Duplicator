while :
do
  read bc 
  zpl1="^XA~SD15^LT0^MNW^MTT^PON^PMN^LH0,0^JMA^PR4,4^MD15^LRN^CI0"
  zpl2="^MMT^PW600^LL0150^LS0^BY4,3,81^FT76,96^BCN,,Y,N^FD"
  zpl3="^FS^XZ"
  fullzpl=$zpl1$zpl2$bc$zpl3 #This inserts the variable bc in two places in the script, once for the custom interpretation line and once for the Code 128 barcode.  See the README.md file for details.
  echo $fullzpl
  echo $fullzpl > /tmp/bc.txt
  lp -dZebra -o raw /tmp/bc.txt
done
