<style>
  body {
    background-color: #20202b !important;
    color: #e4e7f2 !important;
  }

  .markdown-body > h1:first-of-type {
    display: none !important;
  }

  .task-list-item {
  list-style-type: none !important;
  }

  .task-list-item-checkbox {
    margin: 0 0.5em 0.25em -1.3em !important;
    vertical-align: middle !important;
  }

  h1 {
    text-align: center !important;
    margin-top: 2rem !important;
    border-bottom: none !important;
  }

  h1, h2, h3, h4, h5, h6 {
    color: #e4e7f2 !important;
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
    border-left: 3px solid #e4e7f2 !important;
    background-color: #252538 !important;
  }
</style>

# GHS Documentation

Welcome to the official documentation repository. This site provides a comprehensive guide on how to deploy, configure, and utilize the scripts and automated utilities within this project.

> 💡 **Tip:** Some modules require that the current system contain a `/lib/Utils` folder with the necessary importable modules. Typically, only modules that run exclusively on your machine have this requirement.

---

### 🚀 Core Modules

Discover the primary standalone tools built to streamline network operations and security auditing.

- 🔑 `steal` - An advanced post-exploitation module engineered for automated credential harvesting and data exfiltration across active SSH and FTP sessions.
- 🔨 `make` - A simplified script compilation utility that streamlines the process of building and deploying binaries directly to `/bin` with minimal overhead.
- 🔓 `qdecipher` - A fast, lightweight decryption utility capable of parsing and decoding encrypted files or standalone raw strings on the fly.
- 🖥️ `mxkit` - A powerful, high-performance module designed for fully automated vulnerability scanning and exploitation.

### 📦 Importable Modules

These modular source files are used internally to provide advanced functionality, abstracting low-level operations.

- 🛠️ `utils/import.src` - A custom dependency manager that introduces a robust, centralized function for importing dynamic shared libraries with sophisticated error handling.
- 🔤 `utils/strings.src` - An advanced string manipulation library providing high-level helper functions for text parsing, formatting, and data transformation.

### 🔐 Custom SSH Encryption

This section provides comprehensive guidance on deploying and configuring the custom SSH encryption system included in this repository, designed for enhanced security and obfuscation of authentication protocols.

**Key Advantages:**

- **One-Way Transformation** - the algorithm is cryptographically irreversible; even with full access to the algorithm source code (`encode.src`), attackers cannot derive the original password from the intercepted hash.
- **Replay-Attack Mitigation** - Time-based nonces ensure that intercepted authentication packets expire within 60-120 seconds, eliminating the viability of delayed password reuse attacks.
- **Zero Plaintext Transmission** - Unlike traditional password authentication, the actual password never crosses the network; only the cryptographically hashed representation is transmitted.
- **Minimal Computational Overhead** - FNV-1a requires only bitwise XOR operations and modular arithmetic, making it suitable for real-time authentication without performance penalties.
- **Obfuscation Through Algorithm Transparency** - The security model is based on *algorithmic obscurity* rather than *keying obscurity*: the algorithm is visible in `encode.src`, but the actual root password remains locked within the compiled `decode.bin` binary.

**Installation Steps:**

1. Store the two core encryption components - `encode.src` and `decode.src` (located in `/scripts/server`) somewhere on your server.
2. Compile the primary installation module `ssh-encryption.src` (located in `/scripts/server`) using the in-game build tools.
3. Deploy the encryption system to your server by executing `ssh-encryption install` from the compiled binary.

## 📌 Development Roadmap

Track the ongoing development, upcoming features, and future architecture overhauls.

- [ ] `mxkit`: Implement a local caching layer for discovered library vulnerabilities to optimize execution speed and reduce redundant network scanning.
- [x] `steal`: Develop a dedicated post-exploitation module tailored for automated credential harvesting via active SSH and FTP sessions.