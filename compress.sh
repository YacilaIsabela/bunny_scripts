#! /bin/bash

#path="./"

if [[ -n $1 ]]; then
  if [ -d $1 ]; then
    path=$1
  fi
fi
echo "Using this path: " $path

dirs=`ls -d ${path}*/EMPANADA_SoVT_*/`

for dir in $dirs; do
  
id=`basename ${dir} | cut -c 10-15`

echo ${id}

	
fslmerge -t ${dir}${id} ${dir}f*.nii

#rm ${dir}f*0000*-1.nii  ${dir}f*000*-1.nii ${dir}f*001*-1.nii ${dir}f*002*-1.nii ${dir}f*003*-1.nii ${dir}f*004*-1.nii ${dir}f*005*-1.nii ${dir}f*0064*-1.nii

 
done
