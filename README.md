# x0C-r3po
```
usage: local-repo path [options]

This program helps to manage local repositories. Specify the path to the
repository with the first argument. If no option is specified, some repo
information will be printed.

positional arguments:
  path                  path to the repo or the repo name if set up in your
                        config file '~/.config/local-repo'

optional arguments:
  -h, --help            show this help message and exit
  -a path [path ...], --add path [path ...]
                        add a package to the repo - path can point to a local
                        or remote package file, pkgbuild file or pkgbuild
                        tarball - supported protocols are HTTP(S) and FTP
  -A name [name ...], --aur-add name [name ...]
                        download, build and add a package from the AUR to the
                        repo
  -c, --check           run an integrity check
  -C, --clear-cache     clear the cache
  -e, --elephant        the elephant never forgets
  -f, --force           force an operation - use this with -a or --add to
                        up-/downgrade a package
  -F path, --config-file path
                        use an alternative config file (instead of
                        '~/.config/local-repo')
  -i name [name ...], --info name [name ...]
                        display info for specified packages
  -l, --list            list all packages from the repo
  -r name [name ...], --remove name [name ...]
                        remove packages from the repo
  -R, --restore         restore repo database
  -s term, --search term
                        find packages
  -U, --aur-upgrade     upgrade all packages in the repo, which are available
                        in the AUR
  -V, --vcs-upgrade     upgrade all packages in the repo, which are based on a
                        VCS and available in the AUR

Please report bugs at: <https://github.com/ushis/local-repo/issues>
```

Examples:
```
Creating a new repo
One way of creating a repo is to create an empty diretory and add some packages, eg from the AUR using -A.

$ mkdir /tmp/repo
$ local-repo /tmp/repo -A package1 package2 package3
If you already have some packages in a directory, you can use the -R option

$ cd /path/to/packages
$ ls
package1.pkg.tar.xz
package2.pkg.tar.xz
package3.pkg.tar.xz
$ local-repo ./ -R
```


Config:
```
The default config file is stored in ~/.config/local-repo. See /usr/share/local-repo/config.example if you want to create one or run

$ cp /usr/share/local-repo/config.example ~/.config/local-repo
and edit the file. The coolest feature of the config file is the path option. Write something like this

[myrepo]
path = /srv/http/repo
Now you can type $ local-repo myrepo -l instead of $ local-repo /srv/http/repo -l
```


/etc/pacman.conf:
```
[x0c-r3po]
SigLevel = PackageRequired
Server = https://github.com/xNNism/x0c-r3po/raw/master
# Server = file:///path/to/x0c-r3po/ # local
```
