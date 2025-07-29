#!/bin/bash
# Generate a distributable version of the guide

out_dir=ricse_transmission_security_study_guide
rm -rf ${out_dir}

make

mkdir -p ${out_dir}/code/snippets

cp main.pdf ${out_dir}/${out_dir}.pdf

cp -r code/snippets/* ${out_dir}/code/snippets

zip -r dist.zip ${out_dir}

rm -rf ${out_dir}
    
