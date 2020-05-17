#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'approve.sh' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://0dayzh.github.io/approve.sh
git push -f git@github.com:snowzhaoo/uniswap-v2-frontend.git master:gh-pages

cd -