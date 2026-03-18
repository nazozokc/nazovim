<div align="center">

```
                                _
   ____  ____ _____  ____ _   __(_)___ ___
  / __ \/ __ `/_  / / __ \ | / / / __ `__ \
 / / / / /_/ / / /_/ /_/ / |/ / / / / / / /
/_/ /_/\__,_/ /___/\____/|___/_/_/ /_/ /_/
```

**Eine persönliche Neovim-Distribution von [nazozokc](https://github.com/nazozokc)**

[![CI](https://github.com/nazozokc/nazozokc.nvim.config/actions/workflows/nvim.yml/badge.svg)](https://github.com/nazozokc/nazozokc.nvim.config/actions/workflows/nvim.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
![Neovim](https://img.shields.io/badge/Neovim-0.10%2B-blueviolet?logo=neovim)
![Nix](https://img.shields.io/badge/Nix-flake-blue?logo=nixos)

</div>

---

## ✨ Über nazovim

**nazovim** ist eine persönliche Neovim-Distribution für CLI/TUI-zentrierte Arbeitsabläufe.
Basierend auf dem [kanagawa](https://github.com/rebelot/kanagawa.nvim) Farbschema und [lazy.nvim](https://github.com/folke/lazy.nvim) für schnelles Lazy Loading, bietet sie alles Notwendige für TypeScript, Lua, Nix, Ruby und mehr.

> Als Nix-Flake verteilt — starten Sie sofort in einer isolierten Umgebung mit einem einzigen `nix run`.

---

## 🖼️ Screenshots

> _Demnächst verfügbar_

---

## 🚀 Funktionen

- **⚡ Schneller Start** — Aggressives Lazy Loading via lazy.nvim
- **🔧 Vollständiges LSP** — Multi-Sprachen-Unterstützung: TypeScript / Lua / Ruby / Nix / C / Java / Zig u.v.m.
- **🎨 kanagawa** — `kanagawa-dragon` Theme + transparenter Hintergrund
- **🧠 KI-Integration** — Claude Code (`claudecode.nvim`) und opencode (`opencode.nvim`) beide unterstützt
- **🌊 snacks.nvim** — Dashboard, Picker, Zen-Modus und Sitzungsverwaltung vereint
- **🐛 DAP** — JavaScript / TypeScript Debugging-Umgebung inklusive
- **📦 Nix-kompatibel** — Isolierter Start mit `nix run` / LSP-ausgestattete devShell mit `nix develop`
- **🧪 Tests** — neotest + Jest / Vitest / Playwright Adapter
- **🔍 Fuzzy-Suche** — snacks.nvim Picker (Ivy-Layout) als Haupt-, Telescope als Nebensuche
- **📝 Treesitter-Textobjekte** — Hochpräzise Textobjekte auf Funktions-/Klassen-/Argumentebene

---

## 📋 Voraussetzungen

| Erforderlich | Version |
|-------------|---------|
| Neovim | 0.10+ |
| Git | beliebig |
| [Nerd Font](https://www.nerdfonts.com/) | Für Icon-Anzeige erforderlich |

| Empfohlen | Zweck |
|-----------|-------|
| Nix (mit Flakes) | `nix run` / `nix develop` isolierter Start |
| Node.js | TypeScript LSP / prettier |
| lazygit | LazyGit-Integration |
| yazi | Dateimanager-Integration |
| ripgrep | Grep-Suche |
| fd | Dateisuche |

---

## 📦 Installation

### Methode 1: `nix run` (Empfohlen / Nix-Umgebung)

```bash
nix run github:nazozokc/nazozokc.nvim.config
```

Die Konfiguration wird isoliert in `~/.config/nvim-nazozokc` bereitgestellt, ohne die bestehende Neovim-Konfiguration zu beeinflussen.

### Methode 2: `nix develop` (devShell)

Betreten Sie eine Entwicklungsshell mit fertiger LSP- und Formatter-Konfiguration.

```bash
nix develop github:nazozokc/nazovim
nvim  # startet automatisch mit NVIM_APPNAME=nvim-nazozokc
```

### Methode 3: Klonen (ohne Nix)

> **Hinweis**: Dies überschreibt Ihre bestehende Neovim-Konfiguration. Backup empfohlen.
>
> ```bash
> mv ~/.config/nvim ~/.config/nvim.backup
> ```

```bash
git clone https://github.com/nazozokc/nazozokc.nvim.config.git ~/.config/nvim
nvim
```

Beim ersten Start installiert lazy.nvim automatisch alle Plugins.

---

## 🗂️ Verzeichnisstruktur

```
.
├── flake.nix             # Nix flake (nix run / nix develop)
├── init.lua              # Einstiegspunkt & Tastenkürzel-Definitionen
├── lazy-lock.json        # Plugin-Versions-Lock
├── lua/
│   ├── vim-options.lua   # Grundlegende Vim-Einstellungen
│   ├── plugins.lua       # lazy.nvim Einstieg (leer = lädt plugins/ automatisch)
│   └── plugins/          # Plugin-Konfigurationen (eine Datei pro Plugin)
├── template/             # Dateivorlagen
└── .github/
    ├── workflows/        # CI (nvim-Startcheck / Auto-Merge)
    └── ISSUE_TEMPLATE/   # Fehlerbericht / Feature-Anfrage / Plugin-Vorschlag
```

---

## ⌨️ Tastenkürzel

`<Leader>` = `Leertaste`

<details>
<summary><b>Allgemein</b></summary>

| Taste | Aktion |
|-------|--------|
| `<Leader><Leader>` | Dateisuche (snacks Picker) |
| `<Leader>g` | Live Grep |
| `<Leader>b` | Pufferliste |
| `<Leader>r` | Zuletzt verwendete Dateien |
| `<Leader>h` | Suchmarkierung löschen |
| `<Leader>z` | Zen-Modus |
| `<Leader>m` | Oil Datei-Explorer |
| `<Leader>n` | Neo-tree |
| `<Leader>t` | Schwebendes Terminal |
| `<Leader>f` | Puffer formatieren |

</details>

<details>
<summary><b>LSP</b></summary>

| Taste | Aktion |
|-------|--------|
| `K` | Hover-Dokumentation |
| `gd` | Zur Definition springen |
| `ga` | Code-Aktion (Lspsaga) |
| `<Leader>ca` | Code-Aktion (Vorschau) |
| `<Leader>gr` | Referenzen |
| `<Leader>oi` | Imports organisieren (TS) |
| `<Leader>ru` | Unbenutzte entfernen (TS) |

</details>

<details>
<summary><b>Git</b></summary>

| Taste | Aktion |
|-------|--------|
| `<Leader>gd` | Diffview öffnen |
| `<Leader>gh` | Dateiverlauf |
| `<Leader>gH` | Branch-Verlauf |
| `<Leader>gc` | Diffview schließen |
| `<Leader>gp` | Hunk-Vorschau |
| `<Leader>gt` | Blame umschalten |

</details>

<details>
<summary><b>KI</b></summary>

| Taste | Aktion |
|-------|--------|
| `<Leader>ac` | Claude Code umschalten |
| `<Leader>af` | Claude Code fokussieren |
| `<Leader>ab` | Aktuellen Puffer hinzufügen |
| `<C-a>` | opencode fragen |
| `<C-x>` | opencode Aktion auswählen |
| `<C-.>` | opencode umschalten |

</details>

---

## 🏗️ Nix-Integration

```bash
# Isolierter Start
nix run github:nazozokc/nazovim

# Entwicklungsshell mit LSP/Formatter
nix develop github:nazozokc/nazovim

# Unterstützte Plattformen
# x86_64-linux / aarch64-linux / aarch64-darwin
```

---

## 🐛 Mitwirken

Issues und PRs sind willkommen.
Für Fragen besuchen Sie die [GitHub Discussions](https://github.com/nazozokc/nazozokc.nvim.config/discussions).

---

## 📄 Lizenz

MIT © [nazozokc](https://github.com/nazozokc)
