#! /bin/bash

path="./"

echo "Using this path: " $path

dirs=`ls -d ${path}s*/`

for dir in $dirs; do

id=`basename ${dir} | cut -c 1-4`

echo $dir${id}_Mov_suff_minus*

#fslmaths ${dir}con_0001 -add ${dir}con_0002 -add ${dir}con_0003 ${dir}${id}_Mov_suff 


#fslmaths ${dir}con_0004 -add ${dir}con_0005 -add ${dir}con_0006 ${dir}${id}_Rest_suff 

#fslmaths ${dir}con_0007 -add ${dir}con_0008 -add ${dir}con_0009 ${dir}${id}_Mov_neu

#fslmaths ${dir}con_0010 -add ${dir}con_0011 -add ${dir}con_0012 ${dir}${id}_Rest_neu

#fslmaths ${dir}${id}_Mov_suff -sub ${dir}${id}_Mov_neu ${dir}${id}_Mov_suff_minus_neu

#fslmaths ${dir}${id}_Rest_suff -sub ${dir}${id}_Rest_neu ${dir}${id}_Rest_suff_minus_neu

	
done
