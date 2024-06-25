#!/usr/bin/env sh
# 删除dist, 否则第二次会提示fatal: A branch named 'main' already exists.
rm -rf dist

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' &gt; CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'


# 如果你要部署在 https://&lt;USERNAME&gt;.github.io/&lt;REPO&gt;
git push -f git@github.com:kong303917/dicom-demo.git main:gh-pages

cd -