# AI营养师小程序 - 完整原型展示

这是一个AI营养师小程序的完整功能原型，展示了所有页面的设计和交互流程。

## 🚀 在线预览

访问地址：[https://suhanguo0815-cpu.github.io/ai-nutritionist-app](https://suhanguo0815-cpu.github.io/ai-nutritionist-app)

## 📱 功能特点

### 主要页面
- **首页 (home.html)** - 今日健康概览，包含卡路里统计、体重信息和211饮食结构展示
- **目标管理 (progress.html)** - 体重目标进度追踪，连续打卡天数，健康统计
- **个人中心 (profile.html)** - 个人信息管理，功能菜单导航
- **健康记录 (records.html)** - 食物和运动记录管理，支持多时间维度查看

### 二级页面
- **目标设置 (goal-setting.html)** - 体重目标设置和调整
- **我的AI营养师 (nutritionist.html)** - AI营养师咨询功能
- **我的健康方案 (weight-loss-plan.html)** - 个性化减重方案
- **体检报告 (medical-reports.html)** - 体检报告上传和管理
- **健康档案 (health-profile.html)** - 完整健康信息记录
- **个人账号信息 (account.html)** - 账号信息管理
- **认证页面 (auth.html)** - 登录/注册功能

## 🎨 设计特色

- **响应式设计** - 完美适配移动端设备
- **现代化UI** - 使用Tailwind CSS，简洁美观
- **交互流畅** - 页面间跳转动画和状态保持
- **数据可视化** - 体重趋势图表、进度圆环、T型餐盘结构
- **状态管理** - 本地存储用户数据和登录状态

## 🔧 技术栈

- **前端框架**: 原生HTML/CSS/JavaScript
- **样式框架**: Tailwind CSS
- **图标库**: Font Awesome 6
- **数据存储**: LocalStorage
- **部署平台**: GitHub Pages

## 📂 项目结构

```
├── index.html              # 主展示页面（包含所有页面预览）
├── home.html               # 首页
├── profile.html            # 个人中心
├── progress.html           # 目标管理
├── records.html            # 健康记录
├── goal-setting.html       # 目标设置
├── nutritionist.html       # AI营养师
├── weight-loss-plan.html   # 健康方案
├── medical-reports.html    # 体检报告
├── health-profile.html     # 健康档案
├── account.html            # 账号信息
├── auth.html               # 认证页面
├── common-nav.js           # 通用导航逻辑
└── courses.json            # 课程数据
```

## 🚀 部署说明

1. 将代码推送到GitHub仓库
2. 在仓库设置中启用GitHub Pages
3. 选择main分支作为源
4. 访问 `https://your-username.github.io/repository-name` 查看部署结果

## 📱 使用说明

1. 打开 `index.html` 查看完整原型展示
2. 点击各个页面预览了解功能
3. 使用底部导航栏在主要页面间切换
4. 所有页面都支持完整的交互流程

## 🎯 页面跳转逻辑

- **主要流程**: 首页 → 目标管理 → 个人中心
- **记录管理**: 首页 → 健康记录
- **目标管理**: 目标管理 → 目标设置
- **个人中心**: 个人中心 → 各项功能页面

## 📊 数据展示

- **211饮食结构**: 蔬菜50% + 主食25% + 蛋白质25%
- **体重进度**: 可视化图表展示减重趋势
- **打卡统计**: 连续天数追踪和日历显示
- **营养统计**: 卡路里、蛋白质、脂肪摄入分析

## 🔄 状态保持

- 页面滚动位置自动保存和恢复
- 用户登录状态跨页面同步
- 页面跳转历史记录管理
- 数据输入状态持久化

---

**注意**: 这是一个功能原型，用于展示UI设计和交互流程。实际生产环境需要后端API支持。