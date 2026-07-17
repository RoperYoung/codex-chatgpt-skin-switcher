<p align="center">
  <img src="assets/brand-logo.png" width="92" alt="ChatGPT Skin Switcher 标志">
</p>

<h1 align="center">ChatGPT Skin Switcher</h1>

<p align="center">
  <strong>让 ChatGPT 与 Codex，拥有你的工作氛围。</strong>
</p>

<p align="center">
  <img alt="简体中文（当前）" src="https://img.shields.io/badge/%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87-%E5%BD%93%E5%89%8D-2563eb">
  <a href="README_EN.md"><img alt="切换到英文" src="https://img.shields.io/badge/English-Switch-111827"></a>
</p>

<p align="center">
  <img alt="macOS 14 或更高版本" src="https://img.shields.io/badge/macOS-14%2B-111111?logo=apple">
  <img alt="支持 Apple 芯片与 Intel" src="https://img.shields.io/badge/%E9%80%9A%E7%94%A8-Apple%20Silicon%20%2B%20Intel-4f46e5">
  <img alt="本地优先" src="https://img.shields.io/badge/%E9%9A%90%E7%A7%81-%E6%9C%AC%E5%9C%B0%E4%BC%98%E5%85%88-16a34a">
  <img alt="公开展示仓库" src="https://img.shields.io/badge/%E4%BB%93%E5%BA%93-%E5%85%AC%E5%BC%80%E5%B1%95%E7%A4%BA-2563eb">
</p>

> [!IMPORTANT]
> 这是 ChatGPT Skin Switcher 的官方公开展示仓库，包含产品说明、获准公开的主题包、截图及少量参考代码。生产应用及其核心源码不在本仓库中。

> [!NOTE]
> ChatGPT Skin Switcher 是独立第三方项目，与 OpenAI 不存在隶属关系，也未获得其认可或背书。ChatGPT、Codex 及相关商标归各自权利人所有。

## 项目简介

ChatGPT Skin Switcher 是一款面向 macOS 最新版官方 ChatGPT Desktop 的原生菜单栏换肤工具。你可以从 Mac 选择或拖入自己的图片，让 ChatGPT 与 Codex 共用一套背景，也可以分别设置图片、焦点、缩放、透明度、模糊与遮罩，并把多个完整主题加入播放列表自动轮播。

项目坚持本地优先与非侵入式设计：个人图片和主题配置保存在本机，不上传云端；不会修改官方 `ChatGPT.app`、`app.asar` 或代码签名，也不会读取或修改 API Key、Base URL 和模型供应商设置。

### 主要能力

- **自定义上传本地图片**：从 Mac 选择或拖入自己的图片，可全局共用，也可为 ChatGPT 与 Codex 分别配置；图片不会上传云端
- ChatGPT / Codex 全局或双场景主题
- 图片焦点、缩放、透明度、模糊和遮罩调节
- 本地主题资料库与八套内置主题
- 顺序或随机背景轮播与平滑转场
- 中文 / English 界面
- 暂停换肤与完全恢复官方外观

### 产品界面

<table>
  <tr>
    <td width="33%" align="center"><img src="assets/screenshots/app-theme-market.png" alt="主题市场"><br><sub>主题市场</sub></td>
    <td width="33%" align="center"><img src="assets/screenshots/app-slideshow.png" alt="背景轮播"><br><sub>背景轮播</sub></td>
    <td width="33%" align="center"><img src="assets/screenshots/app-settings.png" alt="设置"><br><sub>中英文与运行设置</sub></td>
  </tr>
</table>

### 八套内置主题

<table>
  <tr>
    <td width="25%" align="center"><img src="themes/one-piece-grand-line/preview.jpg" alt="海贼王 · 伟大航路"><br><sub>海贼王 · 伟大航路</sub></td>
    <td width="25%" align="center"><img src="themes/naruto-konoha-dusk/preview.jpg" alt="火影忍者 · 木叶黄昏"><br><sub>火影忍者 · 木叶黄昏</sub></td>
    <td width="25%" align="center"><img src="themes/arina-rose-dawn/preview.jpg" alt="桥本有菜 · 玫瑰晨光"><br><sub>桥本有菜 · 玫瑰晨光</sub></td>
    <td width="25%" align="center"><img src="themes/zhang-wei-law-office/preview.jpg" alt="张伟律师 · 律政名场面"><br><sub>张伟律师 · 律政名场面</sub></td>
  </tr>
  <tr>
    <td width="25%" align="center"><img src="themes/messi-blue-gold-night/preview.jpg" alt="GOAT"><br><sub>GOAT</sub></td>
    <td width="25%" align="center"><img src="themes/dongbei-yujie-winter-yard/preview.jpg" alt="东北雨姐 · 冬日小院"><br><sub>东北雨姐 · 冬日小院</sub></td>
    <td width="25%" align="center"><img src="themes/yiyangqianxi-sage-crane/preview.jpg" alt="易烊千玺 · 清透鼠尾草"><br><sub>易烊千玺 · 清透鼠尾草</sub></td>
    <td width="25%" align="center"><img src="themes/yua-mikami-cherry-glow/preview.jpg" alt="三上悠亚 · 樱光花园"><br><sub>三上悠亚 · 樱光花园</sub></td>
  </tr>
</table>

每套目录均包含 ChatGPT 背景、Codex 背景、预览图和 Manifest V1 清单。它们与应用安装包中的八套内置主题保持一致，详见 [`themes/`](themes/)。人物、角色、球队元素、商标和相关图片不因本仓库公开而自动获得 MIT 或其他开源授权，具体边界见 [`LICENSE.md`](LICENSE.md)。

### 运行效果

<table>
  <tr>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-ocean.png" alt="主题运行效果一"></td>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-rose.png" alt="主题运行效果二"></td>
  </tr>
  <tr>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-office.png" alt="主题运行效果三"></td>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-soft.png" alt="主题运行效果四"></td>
  </tr>
</table>

### 系统要求

- macOS 14 或更高版本
- Apple Silicon 或 Intel Mac
- 最新版官方 ChatGPT Desktop（Bundle ID：`com.openai.codex`）

## 仓库内容

```text
assets/       获准公开的品牌素材与产品截图
examples/     经过筛选的非核心 Swift 参考文件
themes/       随应用提供的八套主题包
```

## 源码说明

本仓库不是完整开源仓库，不能用于构建生产版应用。`examples/` 只包含经过筛选的主题包数据模型与通用原子写入示例；主界面、业务逻辑、运行时、后端、构建与签名流程均未公开。详情见 [`SOURCE_AVAILABILITY.md`](SOURCE_AVAILABILITY.md)。

## 授权与素材权利

`examples/` 中选定的文件适用 [`LICENSE.md`](LICENSE.md) 所列 MIT 条款。品牌素材、截图、肖像、角色、球队元素、商标和主题图片另行管理，不会自动包含在该 MIT 授权中。
