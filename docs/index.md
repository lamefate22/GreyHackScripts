# 🛠️ GHS Docs | GreyHackScripts

Welcome to the official documentation repository. This site provides a comprehensive guide on how to deploy, configure, and utilize the scripts and automated utilities within this project.

---

## 🚀 Core Modules

Discover the primary standalone tools built to streamline network operations and security auditing.

- 🖥️ **`mxkit`** - A powerful, high-performance module designed for fully automated vulnerability scanning and exploitation.
- 🔓 **`qdecipher`** - A fast, lightweight decryption utility capable of parsing and decoding encrypted files or standalone raw strings on the fly.

## 📦 Importable Modules

These modular source files are used internally to provide advanced functionality, abstracting low-level operations.

- 🛠️ **`utils/import.src`** - A custom dependency manager that introduces a robust, centralized function for importing dynamic shared libraries.
- 🔤 **`utils/strings.src`** - An advanced string manipulation library providing high-level helper functions for text parsing and formatting.

---

## 📌 Development Roadmap

Track the ongoing development, upcoming features, and future architecture overhauls.

- [ ] **`mxkit`:** Implement a local caching layer for discovered library vulnerabilities to optimize execution speed.
- [ ] **`steal`:** Develop a dedicated post-exploitation module tailored for automated credential harvesting via active SSH and FTP sessions.

---
> 💡 **Tip:** Some modules require that the current system contain a `/lib/Utils` folder with the necessary importable modules. Typically, only modules that run exclusively on your machine have this requirement.