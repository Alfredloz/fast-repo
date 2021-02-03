#!/bin/sh
curl -u "UserName:TokenGitHub" https://api.github.com/user/repos -d '{"name":"'"$1"'","private":false}'
# creazione della cartella in locale
echo "Init e creo file README e gitignore nella repo $1"
cd ../Documents/Boolean
mkdir $1
cd $1
git init
touch README.md
touch .gitignore
cat >> .gitignore << EOF
.DS_Store
EOF