#!/bin/sh

## Text color variables
########################
# ${txtund}
txtund=$(tput sgr 0 1)          # Underline
# ${txtbld}
txtbld=$(tput bold)             # Bold
# ${bldblk}
bldblk=${txtbld}$(tput setaf 0) # Black
# ${bldred}
bldred=${txtbld}$(tput setaf 1) # red
# ${bldgrn}
bldgrn=${txtbld}$(tput setaf 2) # green
# ${bldylw}
bldylw=${txtbld}$(tput setaf 3) # Yellow
# ${bldblu}
bldblu=${txtbld}$(tput setaf 4) # blue
# ${bldmgt}
bldmgt=${txtbld}$(tput setaf 5) # Magenta
# ${bldcya}
bldcya=${txtbld}$(tput setaf 6) # cyan
# ${bldwht}
bldwht=${txtbld}$(tput setaf 7) # white
# ${txtrst}
txtrst=$(tput sgr0)             # Reset


echo "# ${bldylw} updating repo...${txtrst}"
repoctl update

echo "# ${bldylw}remove links and rename x0C-r3po.db & x0C-r3po.files.${txtrst}"
sleep 2
rm x0C-r3po.db
rm x0C-r3po.files
mv x0C-r3po.db.tar.gz x0C-r3po.db
mv x0C-r3po.files.tar.gz x0C-r3po.files

echo "# ${bldylw} push updated repo to github${txtrst}"
sleep 2
git add --all
git commit -m "add packages"
git push

echo "# ${bldylw}..done!"
sleep 3
