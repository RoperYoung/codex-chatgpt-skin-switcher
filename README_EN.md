<p align="center">
  <img src="assets/brand-logo.png" width="92" alt="ChatGPT Skin Switcher logo">
</p>

<h1 align="center">ChatGPT Skin Switcher</h1>

<p align="center">
  <strong>Give ChatGPT and Codex a workspace that feels like yours.</strong>
</p>

<p align="center">
  <a href="README.md"><img alt="Switch to Simplified Chinese" src="https://img.shields.io/badge/%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87-%E5%88%87%E6%8D%A2-2563eb"></a>
  <img alt="English (current)" src="https://img.shields.io/badge/English-Current-111827">
</p>

<p align="center">
  <img alt="macOS 14 or later" src="https://img.shields.io/badge/macOS-14%2B-111111?logo=apple">
  <img alt="Universal for Apple Silicon and Intel" src="https://img.shields.io/badge/Universal-Apple%20Silicon%20%2B%20Intel-4f46e5">
  <img alt="Local-first privacy" src="https://img.shields.io/badge/privacy-local--first-16a34a">
  <img alt="Public showcase repository" src="https://img.shields.io/badge/repository-public%20showcase-2563eb">
</p>

> [!IMPORTANT]
> This is the official public showcase repository for ChatGPT Skin Switcher. It contains product documentation, approved theme packages, screenshots, and a few reference code files. The production application and its core source code are not included.

> [!NOTE]
> ChatGPT Skin Switcher is an independent third-party project and is not affiliated with or endorsed by OpenAI. ChatGPT, Codex, and related trademarks belong to their respective owners.

## Overview

ChatGPT Skin Switcher is a native macOS menu-bar app for the latest official ChatGPT Desktop. Choose or drag in your own images from your Mac, share one background across ChatGPT and Codex, or configure each scene separately with its own image, focus, scale, opacity, blur, and overlay. Complete themes can also be added to playlists for automatic rotation.

The product is local-first and non-invasive. Personal images and theme settings remain on your Mac and are never uploaded to the cloud. It does not modify the official `ChatGPT.app`, `app.asar`, or its code signature, and it does not access or change API keys, base URLs, or model-provider settings.

### Highlights

- **Use your own local images:** Choose or drag in images from your Mac, share one background, or configure ChatGPT and Codex separately; images are never uploaded to the cloud
- Shared or scene-specific ChatGPT / Codex themes
- Focus, scale, opacity, blur, and overlay controls
- Local theme library with eight bundled themes
- Sequential or random slideshows with smooth transitions
- Chinese and English interface
- Pause theming or completely restore the official appearance

### Product interface

<table>
  <tr>
    <td width="33%" align="center"><img src="assets/screenshots/app-theme-market.png" alt="Theme market"><br><sub>Theme market</sub></td>
    <td width="33%" align="center"><img src="assets/screenshots/app-slideshow.png" alt="Background slideshow"><br><sub>Background slideshow</sub></td>
    <td width="33%" align="center"><img src="assets/screenshots/app-settings.png" alt="Settings"><br><sub>Language and runtime settings</sub></td>
  </tr>
</table>

### Eight bundled themes

<table>
  <tr>
    <td width="25%" align="center"><img src="themes/one-piece-grand-line/preview.jpg" alt="One Piece · Grand Line"><br><sub>One Piece · Grand Line</sub></td>
    <td width="25%" align="center"><img src="themes/naruto-konoha-dusk/preview.jpg" alt="Naruto · Konoha Dusk"><br><sub>Naruto · Konoha Dusk</sub></td>
    <td width="25%" align="center"><img src="themes/arina-rose-dawn/preview.jpg" alt="Arina Hashimoto · Rose Dawn"><br><sub>Arina Hashimoto · Rose Dawn</sub></td>
    <td width="25%" align="center"><img src="themes/zhang-wei-law-office/preview.jpg" alt="Attorney Zhang Wei · Courtroom Classic"><br><sub>Attorney Zhang Wei · Courtroom Classic</sub></td>
  </tr>
  <tr>
    <td width="25%" align="center"><img src="themes/messi-blue-gold-night/preview.jpg" alt="GOAT"><br><sub>GOAT</sub></td>
    <td width="25%" align="center"><img src="themes/dongbei-yujie-winter-yard/preview.jpg" alt="Dongbei Yujie · Winter Courtyard"><br><sub>Dongbei Yujie · Winter Courtyard</sub></td>
    <td width="25%" align="center"><img src="themes/yiyangqianxi-sage-crane/preview.jpg" alt="Jackson Yee · Sage and Crane"><br><sub>Jackson Yee · Sage and Crane</sub></td>
    <td width="25%" align="center"><img src="themes/yua-mikami-cherry-glow/preview.jpg" alt="Yua Mikami · Cherry Glow"><br><sub>Yua Mikami · Cherry Glow</sub></td>
  </tr>
</table>

Each directory contains a ChatGPT background, a Codex background, a preview image, and a Manifest V1 file. They match the eight themes bundled with the application; see [`themes/`](themes/). Portraits, characters, team elements, trademarks, and related images do not automatically receive an MIT or other open-source license merely because this repository is public. See [`LICENSE.md`](LICENSE.md) for the exact boundary.

### In action

<table>
  <tr>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-ocean.png" alt="Theme in action, example one"></td>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-rose.png" alt="Theme in action, example two"></td>
  </tr>
  <tr>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-office.png" alt="Theme in action, example three"></td>
    <td width="50%" align="center"><img src="assets/screenshots/codex-theme-soft.png" alt="Theme in action, example four"></td>
  </tr>
</table>

### Requirements

- macOS 14 or later
- Apple Silicon or Intel Mac
- Latest official ChatGPT Desktop (Bundle ID: `com.openai.codex`)

## Repository contents

```text
assets/       Approved branding and product screenshots
examples/     Selected non-core Swift reference files
themes/       Eight theme packages bundled with the app
```

## Source availability

This is not a complete open-source repository and cannot be used to build the production application. `examples/` contains only selected theme-package data models and a generic atomic-write example. The main interface, business logic, runtime, backend, build process, and signing workflow are not published. See [`SOURCE_AVAILABILITY.md`](SOURCE_AVAILABILITY.md) for details.

## License and asset rights

The selected files in `examples/` are available under the MIT terms described in [`LICENSE.md`](LICENSE.md). Branding, screenshots, portraits, characters, team elements, trademarks, and theme artwork are governed separately and are not automatically covered by that MIT grant.
