#!/bin/sh
# The resize form posts a size to /home.
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'action="/home"'
echo "$P" | grep -q 'name="size"'
