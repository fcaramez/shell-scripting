#! /bin/zsh

echo ">>>>> Input your commit message and branch to push the changes"
wait 2
git add . && git commit -m "{$1}" && git push origin $2
wait 2
echo ">>>>> Success!"