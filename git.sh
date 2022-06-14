SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
cd $SCRIPTPATH
touch "$(date +%s)" 
/usr/bin/git reset
/usr/bin/git push origin HEAD:main --force
/usr/bin/git config pull.rebase false
/usr/bin/git add . --all
/usr/bin/git commit -m "test" -a
/usr/bin/git push --force
/usr/bin/git push origin main --force
rm ./1*