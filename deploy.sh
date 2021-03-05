#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cp -r docs/.vuepress/dist/* ./.

# 如果发布到 https://<USERNAME>.github.io
git add -A
git commit -m 'deploy'
git push -f
