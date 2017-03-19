#!/bin/bash

# usage:
USAGE='usage: upload <url> <username> <password> [<basefolder>]'

# Copyright 2016-2017 Ekkart Kleinod <ekleinod@edgesoft.de>

# The files are distributed under the terms of the GNU Lesser General Public License.

# See COPYING and COPYING.LESSER for details.

# This file is part of jekyll-mb.

# jekyll-mb is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# jekyll-mb is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with jekyll-mb.  If not, see <http://www.gnu.org/licenses/>.

# url
if [ -z "$1" ]
then
	echo 'url missing'
	echo $USAGE
	exit 1
fi

# username
if [ -z "$2" ]
then
	echo 'username missing'
	echo $USAGE
	exit 1
fi

# password
if [ -z "$3" ]
then
	echo 'password missing'
	echo $USAGE
	exit 1
fi


# use param or default basefolder
BASEFOLDER=${4:-"htdocs"}

# upload all files
echo wput --timestamping --dont-continue --reupload $BASEFOLDER/* --basename=$BASEFOLDER/ ftp://$2:$3@$1/$BASEFOLDER/

# EOF
