#!/bin/bash

# AI营养师小程序自动部署脚本
# 这个脚本将帮助您创建GitHub仓库并部署到GitHub Pages

echo "🚀 AI营养师小程序自动部署脚本"
echo "=================================="

# 检查是否在正确的目录
if [ ! -f "index.html" ]; then
    echo "❌ 错误：请在项目根目录运行此脚本"
    exit 1
fi

# 设置仓库名称
REPO_NAME="ai-nutritionist-app"
echo "📦 仓库名称: $REPO_NAME"

# 检查Git状态
if [ ! -d ".git" ]; then
    echo "❌ 错误：Git仓库未初始化"
    exit 1
fi

echo "✅ Git仓库已初始化"

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    git commit -m "Update: 准备部署到GitHub Pages"
    echo "✅ 更改已提交"
fi

echo ""
echo "🔧 接下来需要手动完成以下步骤："
echo ""
echo "1. 访问 https://github.com/new"
echo "2. 创建新仓库："
echo "   - 仓库名称: $REPO_NAME"
echo "   - 描述: AI营养师小程序完整原型展示"
echo "   - 选择: Public"
echo "   - 不要勾选任何初始化选项"
echo "3. 点击 'Create repository'"
echo ""
echo "4. 创建完成后，复制仓库的HTTPS URL"
echo "5. 运行以下命令推送代码："
echo ""
echo "   git remote add origin <您的仓库URL>"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "6. 在GitHub仓库设置中启用GitHub Pages："
echo "   - 进入仓库的 Settings 页面"
echo "   - 滚动到 'Pages' 部分"
echo "   - Source 选择 'Deploy from a branch'"
echo "   - Branch 选择 'main'"
echo "   - Folder 选择 '/ (root)'"
echo "   - 点击 'Save'"
echo ""
echo "7. 等待几分钟后访问："
echo "   https://您的用户名.github.io/$REPO_NAME"
echo ""
echo "🎉 部署完成后，您就可以在线访问AI营养师小程序了！"
echo ""
echo "按任意键继续..."
read -n 1 -s

# 尝试自动检测GitHub用户名
echo ""
echo "🔍 正在尝试检测GitHub配置..."

# 检查是否有GitHub远程仓库
if git remote -v | grep -q github.com; then
    echo "✅ 检测到GitHub远程仓库"
    REMOTE_URL=$(git remote get-url origin 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo "📍 远程仓库URL: $REMOTE_URL"
        # 提取用户名
        USERNAME=$(echo $REMOTE_URL | sed -n 's/.*github\.com[:/]\([^/]*\)\/.*/\1/p')
        if [ -n "$USERNAME" ]; then
            echo "👤 检测到GitHub用户名: $USERNAME"
            echo "🌐 部署后的访问地址将是:"
            echo "   https://$USERNAME.github.io/$REPO_NAME"
        fi
    fi
else
    echo "ℹ️  未检测到GitHub远程仓库，请按照上述步骤手动创建"
fi

echo ""
echo "✨ 脚本执行完成！"
