#! /bin/bash

path="./"

if [[ -n $1 ]]; then
  if [ -d $1 ]; then
    path=$1
  fi
fi
echo "Using this path: " $path

dirs=`ls -d ${path}*.txt`

for dir in $dirs; do
  
id=`basename ${dir} | cut -c 10-15`

echo ${dir}

sed -i '294,310d' ${dir}

 
done
