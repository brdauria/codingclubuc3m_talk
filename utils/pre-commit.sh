#!/bin/bash

echo pre-commit RUNNING

CMD=$(git status slides/slides.html -s)
STATUS="${CMD:0:2}"

if [ "$STATUS" == "M " ] 
then
 echo slides.html staged to be COPIED 
 touch .commit 
 exit
else
  echo sliedes.html NOT changed
fi
