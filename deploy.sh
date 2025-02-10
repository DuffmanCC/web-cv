# check https://github.com/DuffmanCC/web-cv/settings/pages to see 
# if carlosortiz.dev is in the custom domain field, last time I checked it was empty

#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:DuffmanCC/web-cv.git main:gh-pages

cd -
