#!/bin/bash



string=$(printf "%s" "${@}")

git commit -m "${string}"