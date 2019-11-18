#!/bin/sh

echo "Enter volume size in GB for space on the Image"
read size_v
echo "Enter volume name for Disk Image"
read name_v
echo "Enter destination to save Disk Image (on an external drive) maybe: Volumes/Disk1"
read dest_v

cd /
sudo hdiutil create -size ${size_v}g -volname $name_v $dest_v$name_v.dmg -fs HFS+
sudo hdiutil attach $dest_v$name_v.dmg

sudo tmutil setdestination Volumes/$name_v 
