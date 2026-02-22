#!/bin/bash

# Grabs from the directory it is in
dir=pwd | grep ""
# Count amount of all files inherent in folder
amount=$(cd ${dir} | ls | grep -cv "^0")
# What is standing in the template
content=$(cat <<-END
  {pkgs, lib, ... }: {}
END
)
#
let n=${amount}-1
cd ${dir} | touch "${n}-template.nix" && echo ${content} > "${n}-template.nix"
