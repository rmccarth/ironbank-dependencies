#!/bin/bash

# download the package requested by the user, parse for added urls, and then write to file 'urls'
python -m pip download -v $PACKAGE |grep "from https" |grep "Added" | awk '{ print $4}' > urls

