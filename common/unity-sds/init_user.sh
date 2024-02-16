#!/usr/bin/env bash

skel_src_dir=/etc/unity-sds/jupyter_skel
user_dst_dir=/home/jovyan

# Find files and directories in $skel_src_dir at the root level
mapfile -t skel_config_fns < <(find $skel_src_dir -mindepth 1 -maxdepth 1 -printf '%f\n')

# Only copy files if the destination in the Jupyter home directory does not exist
for skel_fn in "${skel_config_fns[@]}"; do
  if [ -e "${skel_src_dir}/${skel_fn}" ] && [ ! -e "${user_dst_dir}/${skel_fn}" ]; then
    cp -a "${skel_src_dir}/${skel_fn}" "${user_dst_dir}/${skel_fn}"
  fi
done
