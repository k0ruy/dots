#!/usr/bin/bash

VAR=$(sensors | grep "junction" | awk '{print $2}')

echo " ${VAR}"
