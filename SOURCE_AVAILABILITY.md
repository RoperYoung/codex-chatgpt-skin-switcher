# Source availability

This repository is an intentionally limited public showcase for ChatGPT Skin Switcher. It is not a mirror of the private production repository and is not a buildable source distribution.

## Included

- Product overview and screenshots
- Sixteen approved bundled theme packages
- Theme package/catalog data-model references
- A generic atomic JSON/file-writing reference

## Not included

- Production SwiftUI/AppKit application code
- Theme runtime and renderer integration
- Node/CDP engine
- Backend, database, administration, and deployment code
- Xcode project and production dependencies
- Tests, build scripts, signing, notarization, and release automation
- Environment files, credentials, databases, logs, or signed artifacts

The selected reference files under `examples/` are useful for understanding the public theme-package shape, but they are not a complete SDK and do not compile into the application on their own.

---

本仓库是有意限制范围的公开展示仓库，并非私有生产仓库的镜像，也不提供可直接构建生产应用的完整源码。公开内容仅包括产品介绍、十六套主题包、截图和少量参考代码；核心客户端、运行时、后端、构建、签名与发布流程均不在公开范围内。
