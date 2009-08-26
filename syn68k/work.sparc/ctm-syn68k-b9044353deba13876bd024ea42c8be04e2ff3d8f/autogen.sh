#! /bin/bash

# $Id: autogen.sh,v 1.1 2009/08/26 19:26:01 christtrekker Exp $

set -o errexit -o nounset -o noclobber

aclocal
autoheader
automake --add-missing
autoconf
