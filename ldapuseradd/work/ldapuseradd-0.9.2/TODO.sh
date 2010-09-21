#!/bin/ksh

FILES=$(find src -name "*.c" -or -name "*.h")

grep -n TODO $FILES | grep -v CVS/Entries

