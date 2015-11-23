#!/bin/bash

set -e

#
# Input validation
if [[ -z "${xamarin_solution}" ]] ; then
  echo "Missing required input: xamarin_solution"
  exit 1
fi

if [[ ! -e "${xamarin_solution}" ]] ; then
  echo "File not exist at: ${xamarin_solution}"
  exit 1
fi

#
# Print configs
echo
echo '========== Configs =========='
echo " * xamarin_solution: ${xamarin_solution}"

#
# Xamarin Components restore
xamarin_components="$COMPONENT_PATH/xamarin-component.exe"

echo
echo mono "${xamarin_components}" restore "${xamarin_solution}"
mono "${xamarin_components}" restore "${xamarin_solution}"
