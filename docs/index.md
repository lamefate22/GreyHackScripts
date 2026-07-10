<style>
  body {
    background-color: #1e1e2e !important;
    color: #cdd6f4 !important;
  }
  h1, h2, h3, h4, h5, h6 {
    color: #f5e0dc !important;
  }
  a {
    color: #89b4fa !important;
  }
  a:hover {
    color: #b4befe !important;
  }
  code, pre {
    background-color: #313244 !important;
    color: #a6e3a1 !important;
    border: 1px solid #45475a !important;
  }
  blockquote {
    color: #bac2de !important;
    border-left: 4px solid #f5e0dc !important;
    background-color: #252538 !important;
  }
</style>

# 🛠️ GHS Docs | GreyHackScripts

Welcome to the official documentation repository. This site provides a comprehensive guide on how to deploy, configure, and utilize the scripts and automated utilities within this project.

---

## 🚀 Core Modules

Discover the primary standalone tools built to streamline network operations and security auditing.

- 🖥️ `mxkit` - A powerful, high-performance module designed for fully automated vulnerability scanning and exploitation.
- 🔓 `qdecipher` - A fast, lightweight decryption utility capable of parsing and decoding encrypted files or standalone raw strings on the fly.

## 📦 Importable Modules

These modular source files are used internally to provide advanced functionality, abstracting low-level operations.

- 🛠️ `utils/import.src` - A custom dependency manager that introduces a robust, centralized function for importing dynamic shared libraries.
- 🔤 `utils/strings.src` - An advanced string manipulation library providing high-level helper functions for text parsing and formatting.

---

## 📌 Development Roadmap

Track the ongoing development, upcoming features, and future architecture overhauls.

- [ ] `mxkit`: Implement a local caching layer for discovered library vulnerabilities to optimize execution speed.
- [ ] `steal`: Develop a dedicated post-exploitation module tailored for automated credential harvesting via active SSH and FTP sessions.

---
> 💡 **Tip:** Some modules require that the current system contain a `/lib/Utils` folder with the necessary importable modules. Typically, only modules that run exclusively on your machine have this requirement.