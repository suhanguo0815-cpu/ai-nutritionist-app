#!/bin/bash

echo "🔍 检查GitHub Pages部署状态..."
echo "=================================="

# 检查本地Git状态
echo "📋 本地Git状态："
git status --porcelain
echo ""

# 检查最新提交
echo "📝 最新提交："
git log --oneline -3
echo ""

# 检查远程状态
echo "🌐 远程仓库状态："
git remote -v
echo ""

# 检查分支状态
echo "🌿 分支状态："
git branch -vv
echo ""

# 检查GitHub Pages URL
echo "🔗 GitHub Pages URL："
echo "https://suhanguo0815-cpu.github.io/ai-nutritionist-app"
echo ""

# 检查关键文件是否存在
echo "📁 关键文件检查："
files=("index.html" "home.html" "profile.html" "progress.html" "records.html" "common-nav-styles.css" "common-animations.js")
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "✅ $file 存在"
    else
        echo "❌ $file 缺失"
    fi
done
echo ""

# 检查文件大小
echo "📊 主要文件大小："
ls -lh *.html | head -5
echo ""

echo "🚀 部署优化完成！"
echo "如果GitHub Pages仍未更新，请："
echo "1. 等待5-10分钟让GitHub Pages重新构建"
echo "2. 清除浏览器缓存并刷新页面"
echo "3. 检查GitHub仓库的Actions标签页查看部署状态"
