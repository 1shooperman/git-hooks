#!/usr/bin/env bash

read -p 'Where did you put this repo? [~/.git_templates] ' pathvar
echo

if [ -z "$pathvar" ]; then
    pathvar="~/.git_templates"
fi

echo "This script will update your git config and set your template directory to: $pathvar"

# Run these parts manually
git config --global init.templatedir "$pathvar"
# end 'Run these parts manually'


exit 0
