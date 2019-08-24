#!/bin/sh

echo "updating repo..."
repoctl update

echo "remove links and rename x0C-r3po.db & x0C-r3po.files."
sleep 2
rm x0C-r3po.db
rm x0C-r3po.files
mv x0C-r3po.db.tar.gz x0C-r3po.db
mv x0C-r3po.files.tar.gz x0C-r3po.files

echo "push updated repo to github"
sleep 2
git add --all
git commit -m "add packages"
git push

echo "..done!"
sleep 3
