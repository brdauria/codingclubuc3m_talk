#!/bin/bash

echo pre-commit RUNNING

if [ git diff --exit-code slides/slides.html ]; then
 echo slides.html has been COPIED 
 touch .commit 
 exit
else
  echo sliedes.html NOT changed
fi
