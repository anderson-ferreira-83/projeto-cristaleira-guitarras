# Guia: Como Subir o Projeto no GitHub via Git Bash (Windows)

**Versão:** 1.0
**Data:** Outubro 2025
**Sistema:** Windows com Git Bash

---

## Pré-requisitos

### 1. Instalar Git for Windows

Se ainda não tem Git instalado:

1. Baixe em: https://git-scm.com/download/win
2. Execute o instalador
3. Use configurações padrão (recomendado)
4. Após instalação, abra **Git Bash**

### 2. Configurar Git (Primeira Vez)

Abra Git Bash e configure seu nome e email:

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

Verifique a configuração:

```bash
git config --list
```

---

## Passo 1: Criar Repositório no GitHub

### Via Interface Web

1. Acesse: https://github.com
2. Faça login na sua conta
3. Clique no botão **"New"** (ou ícone **+** no canto superior direito)
4. Preencha:
   - **Repository name:** `projeto-cristaleira-guitarras` (ou outro nome)
   - **Description:** `Sistema profissional de controle climático para cristaleira de guitarras`
   - **Visibility:** Public ou Private (sua escolha)
   - **NÃO marque:** "Initialize with README" (já temos README.md local)
   - **NÃO adicione:** .gitignore ou license (já temos localmente)
5. Clique **"Create repository"**
6. **IMPORTANTE:** Copie a URL do repositório (formato: `https://github.com/seu-usuario/projeto-cristaleira-guitarras.git`)

---

## Passo 2: Inicializar Repositório Local

### Abra Git Bash no diretório do projeto

**Opção 1:** Navegar via linha de comando
```bash
cd /d/10_Projeto_cristaleira_vedante
```

**Opção 2:** Clicar com botão direito na pasta do projeto e escolher "Git Bash Here"

### Verificar se está no diretório correto

```bash
pwd
```
Deve mostrar: `/d/10_Projeto_cristaleira_vedante` (ou caminho equivalente)

```bash
ls
```
Deve listar: README.md, index.html, docs/, etc.

---

## Passo 3: Inicializar Git e Fazer Primeiro Commit

### 3.1. Inicializar repositório Git

```bash
git init
```

Saída esperada: `Initialized empty Git repository in /d/10_Projeto_cristaleira_vedante/.git/`

### 3.2. Verificar status

```bash
git status
```

Deve mostrar todos os arquivos como "Untracked files"

### 3.3. Adicionar todos os arquivos ao stage

```bash
git add .
```

Este comando adiciona todos os arquivos, respeitando o .gitignore

### 3.4. Verificar o que foi adicionado

```bash
git status
```

Agora os arquivos devem aparecer em verde como "Changes to be committed"

### 3.5. Fazer o primeiro commit

```bash
git commit -m "Initial commit: Projeto Cristaleira A+ - Sistema de Controle Climático

- Documentação completa Cenário A+ (passivo + circulação interna)
- Guias de instalação e materiais
- Investimento: R$ 1.113-1.347
- Sistema para 10 instrumentos (158×179×44cm)"
```

Saída esperada: Confirmação do commit com estatísticas de arquivos

---

## Passo 4: Conectar ao Repositório Remoto do GitHub

### 4.1. Adicionar remote origin

**IMPORTANTE:** Substitua `seu-usuario` pelo seu nome de usuário do GitHub!

```bash
git remote add origin https://github.com/seu-usuario/projeto-cristaleira-guitarras.git
```

### 4.2. Verificar remote configurado

```bash
git remote -v
```

Deve mostrar:
```
origin  https://github.com/seu-usuario/projeto-cristaleira-guitarras.git (fetch)
origin  https://github.com/seu-usuario/projeto-cristaleira-guitarras.git (push)
```

### 4.3. Renomear branch para main (padrão GitHub)

```bash
git branch -M main
```

---

## Passo 5: Enviar para GitHub

### 5.1. Push inicial

```bash
git push -u origin main
```

**Se pedir credenciais:**
- **Username:** seu nome de usuário do GitHub
- **Password:** 
  - **NÃO use sua senha do GitHub!**
  - Use um **Personal Access Token** (PAT)
  - Veja seção "Como Criar Token" abaixo

### 5.2. Verificar upload

Acesse `https://github.com/seu-usuario/projeto-cristaleira-guitarras` no navegador

Todos os arquivos devem estar lá!

---

## Como Criar Personal Access Token (PAT)

### Por que preciso?

GitHub não aceita mais senhas para Git operations. Você precisa de um token.

### Passos:

1. Acesse: https://github.com/settings/tokens
2. Clique **"Generate new token"** → **"Generate new token (classic)"**
3. Preencha:
   - **Note:** `Git Bash - Projeto Cristaleira` (ou descrição que preferir)
   - **Expiration:** 90 days (ou "No expiration" se preferir)
   - **Scopes:** Marque apenas **`repo`** (acesso completo a repositórios)
4. Clique **"Generate token"**
5. **IMPORTANTE:** Copie o token gerado (formato: `ghp_xxxxxxxxxxxxxxxxxxxx`)
6. **SALVE EM LOCAL SEGURO!** O token não será mostrado novamente

### Usar o token:

Quando Git Bash pedir password, cole o token (não sua senha do GitHub)

---

## Comandos Futuros (Atualizações)

### Depois de fazer alterações nos arquivos:

```bash
# Ver o que mudou
git status

# Adicionar arquivos modificados
git add .

# Fazer commit com mensagem descritiva
git commit -m "Descrição da alteração"

# Enviar para GitHub
git push
```

### Ver histórico de commits:

```bash
git log --oneline
```

### Desfazer alterações não commitadas:

```bash
git checkout -- nome-do-arquivo.md
```

---

## Solução de Problemas Comuns

### Erro: "fatal: not a git repository"

**Problema:** Você não está no diretório correto

**Solução:**
```bash
cd /d/10_Projeto_cristaleira_vedante
```

### Erro: "Permission denied (publickey)"

**Problema:** Tentando usar SSH sem configurar chaves

**Solução:** Use HTTPS (URL com `https://` no passo 4.1)

### Erro: "remote origin already exists"

**Problema:** Já tentou adicionar remote antes

**Solução:**
```bash
git remote remove origin
git remote add origin https://github.com/seu-usuario/projeto-cristaleira-guitarras.git
```

### Erro ao fazer push: "Authentication failed"

**Problema:** Senha incorreta ou não está usando token

**Solução:** Use Personal Access Token (veja seção acima)

### Erro: "refusing to merge unrelated histories"

**Problema:** Repositório local e remoto divergentes

**Solução:**
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

---

## Estrutura de Pastas no GitHub

Após o push, seu repositório terá esta estrutura:

```
projeto-cristaleira-guitarras/
├── .gitignore
├── .gitattributes
├── LICENSE
├── README.md
├── ESTRUTURA-PROJETO.md
├── GUIA-GITHUB.md
├── index.html
├── RESUMO-EXECUTIVO-REVISAO.md
├── CENARIO-A-PLUS-circulacao-interna.html
│
├── docs/
│   ├── 03-isolamento-termico.html
│   └── 04-fornecedores.html
│
├── listas-compras/
│   ├── lista-completa-materiais.md
│   └── links-fornecedores.txt
│
├── assets/
│   └── css/
│       └── projeto.css
│
└── _archive/
    ├── VIABILIDADE-6-COOLERS.md
    ├── 05-instalacao-6-coolers-mdf.html
    └── contr_temp_umi/
```

---

## Boas Práticas

### Mensagens de Commit

**Bom:**
```bash
git commit -m "Atualiza lista de materiais com novos fornecedores"
```

**Ruim:**
```bash
git commit -m "mudanças"
```

### Commits Frequentes

- Faça commits pequenos e frequentes
- Cada commit deve representar uma mudança lógica
- Não acumule muitas alterações em um único commit

### Antes de Fazer Push

```bash
# Sempre verifique o que está sendo enviado
git status
git log --oneline -5
```

---

## Links Úteis

- **Git for Windows:** https://git-scm.com/download/win
- **Documentação Git:** https://git-scm.com/doc
- **GitHub Docs:** https://docs.github.com
- **Personal Access Tokens:** https://github.com/settings/tokens
- **Markdown Guide:** https://www.markdownguide.org

---

## Resumo Rápido (Checklist)

- [ ] Git instalado e configurado
- [ ] Repositório criado no GitHub (via web)
- [ ] Git Bash aberto no diretório do projeto
- [ ] `git init`
- [ ] `git add .`
- [ ] `git commit -m "Initial commit"`
- [ ] `git remote add origin [URL]`
- [ ] `git branch -M main`
- [ ] `git push -u origin main`
- [ ] Verificado no GitHub que todos arquivos foram enviados

---

**Criado:** Outubro 2025
**Projeto:** Cristaleira para Guitarras - Sistema A+
**Suporte:** Consulte README.md ou abra Issue no GitHub
