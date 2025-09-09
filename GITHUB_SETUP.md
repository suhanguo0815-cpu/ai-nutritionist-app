# 🚀 GitHub仓库创建和部署指南

## 快速部署步骤

### 第一步：创建GitHub仓库

1. **访问GitHub**
   - 打开浏览器，访问 [https://github.com/new](https://github.com/new)
   - 登录您的GitHub账户

2. **创建新仓库**
   - Repository name: `ai-nutritionist-app`
   - Description: `AI营养师小程序完整原型展示`
   - 选择: `Public` ✅
   - **不要勾选**任何初始化选项（README, .gitignore, license）
   - 点击 `Create repository`

### 第二步：推送代码到GitHub

创建完仓库后，GitHub会显示一个页面，复制其中的HTTPS URL（类似：`https://github.com/your-username/ai-nutritionist-app.git`）

然后在终端运行以下命令：

```bash
# 添加远程仓库
git remote add origin https://github.com/your-username/ai-nutritionist-app.git

# 设置主分支
git branch -M main

# 推送代码
git push -u origin main
```

### 第三步：启用GitHub Pages

1. **进入仓库设置**
   - 在您的GitHub仓库页面，点击 `Settings` 标签

2. **配置Pages**
   - 在左侧菜单中找到 `Pages`
   - Source 选择 `Deploy from a branch`
   - Branch 选择 `main`
   - Folder 选择 `/ (root)`
   - 点击 `Save`

3. **等待部署**
   - 等待2-3分钟让GitHub Pages完成部署
   - 您会看到一个绿色的勾号表示部署成功

### 第四步：访问您的应用

部署完成后，您可以通过以下地址访问：
```
https://your-username.github.io/ai-nutritionist-app
```

## 🎯 预期效果

部署成功后，您将看到：

- ✅ **完整功能展示**：所有页面都可以正常访问
- ✅ **页面跳转**：底部导航栏和页面间跳转都正常工作
- ✅ **移动端适配**：在手机上也能完美显示
- ✅ **数据持久化**：用户输入的数据会保存在本地
- ✅ **交互流程**：完整的用户操作流程演示

## 🔧 如果遇到问题

### 问题1：推送代码时要求输入用户名密码
**解决方案**：使用Personal Access Token
1. 访问 [GitHub Settings > Developer settings > Personal access tokens](https://github.com/settings/tokens)
2. 生成新的token，选择 `repo` 权限
3. 推送时使用token作为密码

### 问题2：GitHub Pages显示404
**解决方案**：
1. 确保仓库是Public的
2. 确保index.html在根目录
3. 等待几分钟让GitHub完成部署

### 问题3：页面样式不显示
**解决方案**：
1. 检查浏览器控制台是否有错误
2. 确保所有CSS和JS文件都正确加载
3. 尝试强制刷新页面（Ctrl+F5）

## 📱 功能演示

部署成功后，您可以演示以下功能：

1. **首页展示**
   - 卡路里统计
   - 体重信息
   - 211饮食结构
   - 打卡记录

2. **目标管理**
   - 体重进度追踪
   - 连续打卡天数
   - 健康统计图表

3. **个人中心**
   - 个人信息管理
   - 功能菜单导航
   - 各项设置页面

4. **健康记录**
   - 食物记录管理
   - 运动记录统计
   - 多时间维度查看

## 🎉 完成！

按照以上步骤，您就可以成功部署AI营养师小程序到GitHub Pages了！

如果遇到任何问题，请告诉我具体的错误信息，我会帮您解决。
