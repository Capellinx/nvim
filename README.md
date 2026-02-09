# Neovim Configuration

Configuração personalizada do Neovim baseada no NvChad com suporte a Go, TypeScript, Lua e mais.

## Pré-requisitos

- Neovim >= 0.11
- Git
- Um compilador C (gcc, clang)
- tree-sitter-cli
- Node.js (opcional, para alguns LSPs)
- Uma [Nerd Font](https://www.nerdfonts.com/) instalada e configurada no terminal

## Instalação

### macOS

```bash
# Instalar Homebrew (se não tiver)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Instalar dependências
brew install neovim git tree-sitter tree-sitter-cli ripgrep fd

# Instalar Go (opcional)
brew install go

# Instalar Node.js (opcional)
brew install node

# Backup da configuração existente (se houver)
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clonar configuração
git clone https://github.com/SEU_USUARIO/nvim.git ~/.config/nvim

# Abrir o Neovim (plugins serão instalados automaticamente)
nvim
```

### Linux (Ubuntu/Debian)

```bash
# Atualizar pacotes
sudo apt update

# Instalar dependências
sudo apt install -y git curl build-essential ripgrep fd-find

# Instalar Neovim (versão mais recente)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

# Adicionar ao PATH (adicione ao ~/.bashrc ou ~/.zshrc)
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc
source ~/.bashrc

# Instalar tree-sitter-cli via npm ou cargo
npm install -g tree-sitter-cli
# ou
cargo install tree-sitter-cli

# Instalar Go (opcional)
sudo apt install -y golang

# Backup da configuração existente (se houver)
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clonar configuração
git clone https://github.com/SEU_USUARIO/nvim.git ~/.config/nvim

# Abrir o Neovim
nvim
```

### Linux (Arch/Manjaro)

```bash
# Instalar dependências
sudo pacman -S neovim git base-devel ripgrep fd tree-sitter tree-sitter-cli

# Instalar Go (opcional)
sudo pacman -S go

# Backup da configuração existente (se houver)
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Clonar configuração
git clone https://github.com/SEU_USUARIO/nvim.git ~/.config/nvim

# Abrir o Neovim
nvim
```

### Windows

```powershell
# Instalar Scoop (se não tiver)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# Instalar dependências
scoop install neovim git mingw ripgrep fd tree-sitter

# Instalar tree-sitter-cli via npm
npm install -g tree-sitter-cli

# Instalar Go (opcional)
scoop install go

# Backup da configuração existente (se houver)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak

# Clonar configuração
git clone https://github.com/SEU_USUARIO/nvim.git $env:LOCALAPPDATA\nvim

# Abrir o Neovim
nvim
```

## Pós-instalação

Ao abrir o Neovim pela primeira vez:

1. O **Lazy.nvim** irá instalar os plugins automaticamente
2. Execute `:MasonInstallAll` para instalar os LSPs
3. Os parsers do Treesitter serão compilados automaticamente

### Verificar instalação

```vim
:checkhealth
```

## Atalhos principais

| Atalho | Descrição |
|--------|-----------|
| `Space` | Leader key |
| `Space + f + f` | Buscar arquivos |
| `Space + f + w` | Buscar texto (grep) |
| `Space + e` | Abrir/fechar árvore de arquivos |
| `Space + g + g` | Abrir Lazygit |
| `Space + l + d` | Abrir Lazydocker |
| `Ctrl + h/j/k/l` | Navegar entre splits |
| `Tab / Shift+Tab` | Próximo/anterior buffer |
| `Space + x` | Fechar buffer |

## LSPs incluídos

- **gopls** - Go
- **ts_ls** - TypeScript/JavaScript
- **lua_ls** - Lua

Para adicionar mais LSPs, edite `lua/plugins/configs/lspconfig.lua` e instale via Mason (`:Mason`).

## Estrutura

```
~/.config/nvim/
├── init.lua                 # Entrada principal
├── lua/
│   ├── core/                # Configurações base
│   │   ├── init.lua         # Opções do Neovim
│   │   ├── mappings.lua     # Atalhos de teclado
│   │   └── utils.lua        # Funções utilitárias
│   ├── plugins/
│   │   ├── init.lua         # Lista de plugins
│   │   └── configs/         # Configurações dos plugins
│   └── custom/
│       └── chadrc.lua       # Configurações personalizadas (tema, etc.)
```

## Personalização

Edite `lua/custom/chadrc.lua` para alterar tema e outras configurações:

```lua
---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'vscode_dark',      -- Altere o tema aqui
  lsp_semantic_tokens = true, -- Habilita cores semânticas do LSP
}

return M
```

Temas disponíveis: execute `:Telescope themes` para ver a lista completa.
