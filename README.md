# x0C-r3po

###### After repoctl update remove links and rename the .tar.gz files:  

`
rm x0C-r3po.db && mv x0C-r3po.db.tar.gz x0C-r3po.db  
`  

`
rm x0C-r3po.list && mv x0C-r3po.list.tar.gz x0C-r3po.list  
`

###### repoctl --help
```
Usage:
  repoctl [command]

Available Commands:
  add         copy and add packages to the repository
  down        download and extract tarballs from AUR
  help        Help about any command
  host        host repository on a network
  list        list packages that belong to the managed repository
  new         create a new repository or configuration file
  remove      remove and delete packages from the database
  reset       recreate repository database
  status      show pending changes and packages that can be upgraded
  update      update database in repository
  version     show version and date information

Flags:
  -b, --backup              backup obsolete files instead of deleting
  -B, --backup-dir string   backup directory relative to repository path (default "backup/")
      --color Colorizer     when to use color (auto|never|always) (default auto)
  -s, --columns             show items in columns rather than lines
      --debug               show unnecessary debugging information
  -h, --help                help for repoctl
  -q, --quiet               show minimal amount of information

```
###### /etc/pacman.conf:
```
[x0c-r3po]  
SigLevel = PackageRequired  
Server = file:///path/to/x0c-r3po/
```
