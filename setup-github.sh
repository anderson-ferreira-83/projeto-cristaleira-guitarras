#!/bin/bash
# Script de Inicialização Rápida para GitHub
# Projeto: Cristaleira para Guitarras - Sistema A+
# Versão: 1.0

echo "=========================================="
echo "  SETUP GITHUB - PROJETO CRISTALEIRA A+"
echo "=========================================="
echo ""

# Verificar se git está instalado
if ! command -v git &> /dev/null; then
    echo "ERRO: Git não está instalado!"
    echo "Baixe em: https://git-scm.com/download/win"
    exit 1
fi

echo "Git instalado: $(git --version)"
echo ""

# Verificar se já está inicializado
if [ -d .git ]; then
    echo "AVISO: Repositório Git já inicializado."
    echo "Executando apenas git status..."
    git status
    exit 0
fi

# Solicitar informações do usuário
echo "Configuração inicial do Git:"
echo ""

read -p "Seu nome (para commits): " git_name
read -p "Seu email (para commits): " git_email
read -p "URL do repositório GitHub (ex: https://github.com/usuario/repo.git): " repo_url

echo ""
echo "Configurando Git..."

# Configurar git (local)
git config user.name "$git_name"
git config user.email "$git_email"

echo "Nome: $git_name"
echo "Email: $git_email"
echo ""

# Inicializar repositório
echo "Inicializando repositório local..."
git init

# Adicionar arquivos
echo "Adicionando arquivos ao stage..."
git add .

# Verificar o que foi adicionado
echo ""
echo "Arquivos que serão commitados:"
git status --short

echo ""
read -p "Continuar com commit? (s/n): " confirm

if [ "$confirm" != "s" ] && [ "$confirm" != "S" ]; then
    echo "Operação cancelada."
    exit 0
fi

# Fazer commit
echo ""
echo "Fazendo commit inicial..."
git commit -m "Initial commit: Projeto Cristaleira A+ - Sistema de Controle Climático

- Documentação completa Cenário A+ (passivo + circulação interna)
- Guias de instalação e materiais
- Investimento: R$ 1.113-1.347
- Sistema para 10 instrumentos (158×179×44cm)"

# Adicionar remote
echo ""
echo "Adicionando remote origin..."
git remote add origin "$repo_url"

# Renomear branch
echo "Renomeando branch para main..."
git branch -M main

echo ""
echo "=========================================="
echo "  CONFIGURAÇÃO CONCLUÍDA!"
echo "=========================================="
echo ""
echo "Próximo passo:"
echo "Execute: git push -u origin main"
echo ""
echo "IMPORTANTE: Quando pedir credenciais:"
echo "- Username: seu usuário do GitHub"
echo "- Password: use Personal Access Token (PAT)"
echo "  Não use sua senha do GitHub!"
echo ""
echo "Como criar PAT:"
echo "1. Acesse: https://github.com/settings/tokens"
echo "2. Generate new token (classic)"
echo "3. Marque 'repo' scope"
echo "4. Copie e use como password"
echo ""
echo "Consulte GUIA-GITHUB.md para mais detalhes."
echo "=========================================="
