#!/bin/sh -e

sudo find /music -type d -exec chmod 775 {} \;
sudo find /music -type f -exec chmod 664 {} \;
sudo mopidyctl local scan
