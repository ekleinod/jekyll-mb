#!/bin/bash

# usage:
# 	build
# 	build yourfolder

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

# jekyll folder
JMB_JEKYLL_DIR=${1:-"jekyll"}

# clean jekyll files
echo cd $JMB_JEKYLL_DIR
echo jekyll clean

# build site
echo JEKYLL_ENV=production jekyll build

# EOF
