#!/bin/bash

for COLLECTION in $(ls icons)
do
  TARGET_DIR=collections/here-icons/$COLLECTION
  mkdir -p $TARGET_DIR
  cp -a icons/$COLLECTION/SVG/*.svg $TARGET_DIR 
done

# These folders don't follow the general structure, do them by hand
mkdir collections/here-icons/guidance-lane-directions/
cp -a icons/guidance-icons/lane-assistance/directions/set-1/*.svg collections/here-icons/guidance-lane-directions/
cp -a icons/guidance-icons/lane-assistance/directions/set-2/*.svg collections/here-icons/guidance-lane-directions/
mkdir collections/here-icons/guidance-lane-dividers/
cp -a icons/guidance-icons/lane-assistance/dividers/*.svg collections/here-icons/guidance-lane-dividers/
mkdir collections/here-icons/guidance-lane-lanes/
cp -a icons/guidance-icons/lane-assistance/lanes/*.svg collections/here-icons/guidance-lane-lanes/
mkdir collections/here-icons/manoeuvers/
cp -a icons/guidance-icons/manoeuvers/*.svg collections/here-icons/manoeuvers/
cp -a icons/guidance-icons/manoeuvers/wego-fallback-roundabout/*.svg collections/here-icons/manoeuvers/
mkdir collections/here-icons/speed-limit/
cp -a icons/guidance-icons/speed-limit/*.svg collections/here-icons/speed-limit/

# Preview image
mkdir -p collections/here-icons/preview
cp -a images/overview.svg collections/here-icons/preview
