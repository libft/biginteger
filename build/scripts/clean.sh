#!/bin/sh

find . -type f -a \( -name "*.o" -o -name "*.d" -o -name "*.bc" -o -name "*.i" -o -name "*.s" \) -delete
find . -type d -empty -delete
