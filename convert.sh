#!/bin/bash

git submodule init
git submodule update

SRC=here-icons
for COLLECTION in $(ls $SRC/icons)
do
  if [ -d "$SRC/icons/$COLLECTION/SVG" ]; then
    TARGET_DIR=collections/here-icons/$COLLECTION
    mkdir -p $TARGET_DIR
    cp -a $SRC/icons/$COLLECTION/SVG/*.svg $TARGET_DIR 
  fi
done

# These folders don't follow the general structure, do them by hand
mkdir collections/here-icons/guidance-lane-directions/
cp -a $SRC/icons/guidance-icons/lane-assistance/directions/set-1/*.svg collections/here-icons/guidance-lane-directions/
cp -a $SRC/icons/guidance-icons/lane-assistance/directions/set-2/*.svg collections/here-icons/guidance-lane-directions/
mkdir collections/here-icons/guidance-lane-dividers/
cp -a $SRC/icons/guidance-icons/lane-assistance/dividers/*.svg collections/here-icons/guidance-lane-dividers/
mkdir collections/here-icons/guidance-lane-lanes/
cp -a $SRC/icons/guidance-icons/lane-assistance/lanes/*.svg collections/here-icons/guidance-lane-lanes/
mkdir collections/here-icons/manoeuvers/
cp -a $SRC/icons/guidance-icons/manoeuvers/SVG/*.svg collections/here-icons/manoeuvers/
mkdir collections/here-icons/road-signs/
cp -a $SRC/icons/guidance-icons/road-signs/*.svg collections/here-icons/road-signs/

# Preview image
mkdir -p collections/here-icons/preview
cp -a $SRC/images/overview.svg collections/here-icons/preview/

# License
cp -a $SRC/LICENSE collections/here-icons/
