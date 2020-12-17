while :
do
  read bc 
  zpl1=""
  zpl2=""
  zpl3=""
  fullzpl=$zpl1$zpl2$bc$zpl3 #This inserts the variable bc in two places in the script, once for the custom interpretation line and once for the Code 128 barcode.  See the README.md file for details.
  echo $fullzpl
  echo $fullzpl > /tmp/bc.txt
  lp -dZebra -o raw /tmp/bc.txt
done
