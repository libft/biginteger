#!/bin/sh

git diff --exit-code --cached --name-only --diff-filter=ACM -- \
'*.c' '*.h' '*.sh' '*.mk' 'Makefile' \
| xargs -L1 bash hooks/scripts/42header-remover.sh
