#!/bin/bash
function gensha {
  echo -n $1 | sha1sum | head -c 7
}

function writemath {
  touch $PLOTNAME.m
  echo "SetOptions[Plot,DisplayFunction->Identity]" >> $PLOTNAME.m
  echo "a=$1" >> $PLOTNAME.m
  echo "Export[\"$PLOTNAME\",a]" >> $PLOTNAME.m
  echo "Exit[]" >> $PLOTNAME.m
}

function plot {
  if [ ! -e $PLOTNAME ]
    then
    if [ ! -e $PLOTNAME.m ]
      then
      writemath $1
    fi
    math -script $PLOTNAME.m
  fi
}

SHA1=`gensha`

PLOTS="img/plots/"
SUFFIX=".pdf"
PLOTNAME="$PLOTS$SHA1$SUFFIX"

case $1 in
  gensha)
    echo $SHA1
    ;;
  plot)
    plot $2
    ;;
  *)
    echo $"Usage: $0 {gensha <function> | plot <plot function>}"
    exit 1
    ;;
esac
