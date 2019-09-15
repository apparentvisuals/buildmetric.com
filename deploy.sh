set -e

vuepress build

cd .vuepress/dist

echo 'buildmetric.com' > CNAME

git init
git add -A
git commit -S -m 'deploy'

git push -f git@github.com:apparentvisuals/buildmetric.com.git master:gh-pages

