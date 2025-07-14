

# demo-debian-packaging-app-sh




## Home

| Link | GitHub |
| ---- | ------ |
| [demo-debian-packaging-app-sh](https://samwhelp.github.io/demo-debian-packaging-app-sh/) | [GitHub](https://github.com/samwhelp/demo-debian-packaging-app-sh) |




## Subject

* [Howto](#howto)
* [Debian Wiki](#debian-wiki)
* [Debian Packaging / Tutorial](#debian-packaging--tutorial)
* [Debian Packaging / Case](#debian-packaging--case)
* [Debian Packaging / Demo](#debian-packaging--demo)
* [Changelog](#changelog)




## Howto

### help

> run

``` sh
make help
```

show

```
Usage:
	$ make [action]

Example:
	$ make

	$ make help

	$ make deb-build-essential

	$ make deb-build-dep

	$ make deb-build

	$ make debsrc-build

```




## Debian Wiki

* [Packaging](https://wiki.debian.org/Packaging)
* Packaging / [Intro](https://wiki.debian.org/Packaging/Intro)
* [BuildingTutorial](https://wiki.debian.org/BuildingTutorial)
* [SimplePackagingTutorial](https://wiki.debian.org/SimplePackagingTutorial)




## Debian Packaging / Tutorial

``` sh
sudo apt-get install packaging-tutorial
```

* [SimplePackagingTutorial](https://wiki.debian.org/SimplePackagingTutorial)
* [debian-packaging-tutorial](https://www.debian.org/doc/manuals/packaging-tutorial/)
* [https://salsa.debian.org/debian/packaging-tutorial](https://salsa.debian.org/debian/packaging-tutorial)


> Contribute to debian-packaging-tutorial

Contribute:

* apt-get source packaging-tutorial
* debcheckout packaging-tutorial
* git clone https://salsa.debian.org/debian/packaging-tutorial.git
* [https://salsa.debian.org/debian/packaging-tutorial](https://salsa.debian.org/debian/packaging-tutorial)
* Open bugs: [bugs.debian.org/src:packaging-tutorial](bugs.debian.org/src:packaging-tutorial)




## Debian Packaging / Case

* GitHub / Nitrux / [nitrux-base-files](https://github.com/Nitrux/nitrux-base-files/blob/legacy/gh-build.sh)
* GitHub / samwhelp / [deb-recipe](https://github.com/samwhelp/deb-recipe)




## Debian Packaging / Demo

* GitHub / samwhelp / [demo-create-debian-package](https://github.com/samwhelp/demo-create-debian-package)




## Changelog

* [man 5 deb-changelog](https://manpages.debian.org/stable/dpkg-dev/deb-changelog.5.en.html)
* [man 1 debchange](https://manpages.debian.org/stable/devscripts/debchange.1.en.html)


> changelog date format

run

``` sh
date -R
```

run


``` sh
date -d '2025-06-09 07:45:46' -R
```


> edit changelog

``` sh
debchange
```
