#!/bin/sh
echo post-commit RUNNING

if [ -a .commit ]; then
    rm .commit
    echo copying slides/slides.html to docs/index.html 
    cp slides/slides.html docs/index.html
    git add docs/index.html
    git commit --amend -C HEAD --no-verify
fi
exit
