#!/usr/bin/bash

VAR=$(sensors | grep "Package id 0" | awk '{print $4}')

echo " ${VAR}"
