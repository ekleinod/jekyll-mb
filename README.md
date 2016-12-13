# jekyll-mb

"jekyll-mb" stands for "Jekyll Modern Business" and contains files for a jekyll layout style using modern business.

I use the style on several of my webpages, if you want to see an example, please go to

http://www.tt-schiri.de/

## Usage

Usage is not as simple as I hope, because jekyll does not provide easy (or any) means to separate the layout from the content.
Furthermore, layout separation of overall and specific definitions is not supported as well.

In order to use the style you have two options:

1. copy the contents in your jekyll directory
2. link the contents in your jekyll directory

Using the first option you will loose the ability to automatically update your pages after an update of the style.

Using the second option provides this ability, but, depending on your operating system, links can be hard to maintain over the years.
In order for this to work in the generated pages, the *build* and *server* script are using the *production* environment of jekyll.

You have to decide if you want to link directories or files, this depends on your use case, and on your choice to make local modifications to files.

### Includes

Includes, that (maybe) ease your life.

#### date

Creates German formatted date.

usage (style parameter is optional)

	{% include date.html date='<date>' style='<long|full>' %}

#### download

Creates link to file download from download folder.

usage (all parameters are optional)

	{% include download.html file='<file>' title='<title>' %}

#### img

Creates link to image in image folder.

usage (all parameters are optional)

	{% include img.html src='<src>' title='<title>' alt='<alt>' align='<right|left|empty>' width='<width>' height='height' %}

#### link

Creates a link.

usage (all parameters are optional)

	{% include link.html target='<target>' title='<title>' %}



### Scripts

The scripts rely on the jekyll site being placed in a folder named `jekyll` directly below the place of script calling.

Example:

	build.sh
	server.sh
	jekyll/...

If you choose to use this layout, you only have to link the scripts to your folder and use them directly.

If you use another directory structure, you can give your directory as parameter to the script.

Example:

	build.sh
	server.sh
	myfolder/...

Now use the scripts as follows:

	$> build.sh myfolder

## Authors

- Ekkart Kleinod
	- github: [ekleinod](https://github.com/ekleinod)
	- E-Mail: <ekleinod@edgesoft.de>
- Tobias Kantusch
	- github: [tkantusch](https://github.com/tkantusch)
	- E-Mail: <tobiaskantusch@online.de>

## What is used?

- Jekyll
	- static website generator
	- <https://jekyllrb.com/>
- Modern Business template
	- bootstrap template
	- <https://github.com/BlackrockDigital/startbootstrap-modern-business.git>
- Bootstrap
	- framework for responsive websites
	- <https://getbootstrap.com/>
- Font Awesome
	- icon font
	- <http://fontawesome.io/>
- jQuery
	- JavaScript library
	- <https://jquery.com/>

All relevant files are copied in *jekyll-mb*.
This has two reasons:

1. I can test locally without internet connection.
2. The published site maintains all dependencies, thus no strange cookies are set etc.

## Git-Repository

The branches are constructed regarding the git branching model of http://nvie.com/posts/a-successful-git-branching-model/

This means, there are always at least three branches:

1. `master` - contains released versions
2. `develop` - main synchronisation branch for feature, release, and hotfix branches
3. `feature/work` - main working branch for development

Additionally, the following branches my occur:

- `feature/*` - writing a special feature
- `release/*` - synchronizing release versions between `develop` and `master`
- `hotfix/*` - fast bugfixes

## Copyright

The copyright is meant for all files of my origin, not the unmodified files of the used libraries, or templates.

Copyright 2016-2016 Ekkart Kleinod <ekleinod@edgesoft.de>

The files are distributed under the terms of the GNU Lesser General Public License.

See COPYING and COPYING.LESSER for details.

This file is part of jekyll-mb.

jekyll-mb is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

jekyll-mb is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with jekyll-mb.  If not, see <http://www.gnu.org/licenses/>.
