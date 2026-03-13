# Ferramentas Externas — Keymaps

> **Leader key:** `<Space>`
> Todas as ferramentas abrem em janela flutuante. Pressione `q` ou `Ctrl+c` para fechar.

---

## Ferramentas Recomendadas

| Ferramenta  | Instalação              | Descrição                            |
|-------------|-------------------------|--------------------------------------|
| lazygit     | `brew install lazygit`  | TUI para Git                         |
| lazydocker  | `brew install lazydocker` | TUI para Docker                    |
| lazysql     | `brew install lazysql`  | TUI para bancos SQL                  |
| posting     | `brew install posting`  | Cliente HTTP TUI (tipo Postman)      |

---

## Keymaps

| Tecla          | Ferramenta  | Ação                          |
|----------------|-------------|-------------------------------|
| `<leader>gg`   | lazygit     | Abrir Lazygit                 |
| `<leader>ld`   | lazydocker  | Abrir Lazydocker              |
| `<leader>lq`   | lazysql     | Abrir Lazysql                 |
| `<leader>po`   | posting     | Abrir Posting                 |

---

## Lazygit — Atalhos principais

| Tecla       | Ação                              |
|-------------|-----------------------------------|
| `1-5`       | Navegar entre painéis             |
| `j / k`     | Navegar para baixo / cima         |
| `Space`     | Selecionar arquivo / stage hunk   |
| `a`         | Stage/unstage todos os arquivos   |
| `c`         | Commit                            |
| `p`         | Push                              |
| `P`         | Pull                              |
| `b`         | Branches                          |
| `]c / [c`   | Próximo / anterior conflito       |
| `o / t / b` | Resolver conflito: ours/theirs/both |
| `e`         | Editar arquivo conflitante        |
| `z`         | Desfazer última ação              |
| `?`         | Ajuda / todos os atalhos          |
| `q`         | Fechar Lazygit                    |

---

## Lazydocker — Atalhos principais

| Tecla     | Ação                              |
|-----------|-----------------------------------|
| `1-4`     | Navegar entre painéis             |
| `j / k`   | Navegar para baixo / cima         |
| `u`       | Up (subir container/serviço)      |
| `s`       | Stop container                    |
| `r`       | Restart container                 |
| `d`       | Deletar container                 |
| `e`       | Exec (entrar no container)        |
| `l`       | Ver logs                          |
| `[`       | Painel anterior                   |
| `]`       | Próximo painel                    |
| `?`       | Ajuda                             |
| `q`       | Fechar Lazydocker                 |

---

## Lazysql — Atalhos principais

| Tecla        | Ação                              |
|--------------|-----------------------------------|
| `c`          | Nova conexão                      |
| `Enter`      | Selecionar conexão / tabela       |
| `j / k`      | Navegar para baixo / cima         |
| `Tab`        | Alternar entre painéis            |
| `e`          | Editar registro                   |
| `d`          | Deletar registro                  |
| `/`          | Filtrar                           |
| `Ctrl+s`     | Executar query                    |
| `?`          | Ajuda                             |
| `q`          | Fechar Lazysql                    |

---

## Posting — Atalhos principais

| Tecla        | Ação                              |
|--------------|-----------------------------------|
| `Ctrl+j`     | Enviar requisição                 |
| `Tab`        | Alternar entre seções             |
| `j / k`      | Navegar para baixo / cima         |
| `e`          | Editar campo atual                |
| `n`          | Nova requisição                   |
| `d`          | Duplicar requisição               |
| `D`          | Deletar requisição                |
| `?`          | Ajuda                             |
| `q`          | Fechar Posting                    |

---

> Dica: use `keymaps-tools` no terminal para reler este arquivo.
