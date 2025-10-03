# Projeto Cristaleira para Guitarras - Controle Climático

![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![Versão](https://img.shields.io/badge/versão-3.0-blue)
![Licença](https://img.shields.io/badge/licença-MIT-green)

Sistema profissional de armazenamento e preservação de instrumentos musicais utilizando controle climático passivo otimizado com circulação interna de ar.

---

## Sobre o Projeto

Este projeto documenta o desenvolvimento de um sistema profissional de controle climático para cristaleira de guitarras (158×179×44cm), com capacidade para **10 instrumentos**.

### Objetivos de Desempenho

- **Temperatura:** 24-25°C uniforme (gradiente < 2°C)
- **Umidade:** 45-55% UR (variação máxima ±5%)
- **Proteção UV:** Bloqueio 99% dos raios ultravioleta
- **Isolamento Térmico:** Redução 70-80% do ganho/perda de calor
- **Circulação:** Interna otimizada para eliminar estratificação térmica

---

## Solução Implementada: A+ - PASSIVO COM CIRCULAÇÃO INTERNA

### Filosofia

Isolamento térmico preservado + circulação interna de ar sem troca com ambiente externo.

### Componentes Principais

- **Isolamento térmico completo** (manta + insulfilm)
- **8 furos passivos Ø15mm** (ventilação natural controlada)
- **2 coolers 140mm INTERNOS** (circulação sem troca de ar externo)
- **1-2 desumidificadores automáticos**
- **Timer digital + higrômetro**

### Especificações Técnicas

- **Investimento:** R$ 1.113-1.347
- **Desempenho:** 95%
- **Gradiente térmico:** 1-2°C
- **Consumo operacional:** R$ 7-12/mês
- **Renovações de ar:** 3-4 ciclos/hora

---

## Estrutura do Repositório

```
projeto-cristaleira-guitarras/
├── README.md                                # Este arquivo
├── ESTRUTURA-PROJETO.md                     # Mapa de navegação
├── index.html                               # Página principal navegação
│
├── RESUMO-EXECUTIVO-REVISAO.md              # Comparação técnica original
├── CENARIO-A-PLUS-circulacao-interna.html   # Guia completo implementação
│
├── docs/
│   ├── 03-isolamento-termico.html           # Isolamento térmico base
│   └── 04-fornecedores.html                 # Fornecedores e materiais
│
├── listas-compras/
│   ├── lista-completa-materiais.md          # Lista de materiais
│   └── links-fornecedores.txt               # Links diretos compra
│
├── assets/
│   ├── css/projeto.css                      # Estilos HTML
│   └── imagens/                             # Diagramas e fotos
│
└── _archive/                                # Documentos arquivados
    ├── VIABILIDADE-6-COOLERS.md
    ├── 05-instalacao-6-coolers-mdf.html
    ├── contr_temp_umi/                      # Sistema Y39U
    └── ...
```

---

## Como Usar Este Projeto

### 1. Decisão e Planejamento

**Leia primeiro:** `CENARIO-A-PLUS-circulacao-interna.html`
- Solução completa passo a passo
- Fundamentos técnicos
- Instalação detalhada

### 2. Lista de Materiais

Consulte: `listas-compras/lista-completa-materiais.md`
- Checklist completo de compras
- Quantidades e especificações
- Valores por fase

### 3. Instalação

**Documentação base:**
1. `docs/03-isolamento-termico.html` - Isolamento térmico
2. `CENARIO-A-PLUS-circulacao-interna.html` - Sistema completo
3. `docs/04-fornecedores.html` - Onde comprar

---

## Investimento Total

### Resumo Financeiro

| Fase | Descrição | Investimento |
|------|-----------|--------------|
| **Fase 1** | Isolamento térmico passivo | R$ 632-697 |
| **Fase 2** | Circulação interna (2 coolers) | R$ 213-237 |
| **Fase 3** | Controle umidade (1 desumid.) | R$ 363-432 |
| **Fase 4** | Proteção instrumentos | R$ 441-461 |
| **TOTAL** | **Projeto completo** | **R$ 1.113-1.347** |

### Custos Operacionais Mensais

- **2 coolers:** 2,6W contínuo = R$ 2/mês
- **Desumidificador:** 20W × 8-12h/dia = R$ 4-8/mês
- **Total típico:** R$ 7-12/mês

---

## Especificações Técnicas

### Dimensões da Cristaleira

- **Altura externa:** 158cm | **Interna:** ~155cm
- **Largura externa:** 179cm | **Interna:** ~175cm
- **Profundidade:** 44cm | **Interna:** ~40cm
- **Volume interno:** ~1,085 m³
- **Capacidade:** 10 instrumentos (guitarras/baixos)

### Componentes Principais

#### Isolamento Térmico

- Insulfilm nanocerâmico G-70 (bloqueio IR: 93-96%, UV: 99%)
- Manta térmica dupla face metalizada
- Vedação hermética EVA 6mm
- R-value total: 0,96 m²·K/W

#### Circulação Interna

- 2 coolers 140mm (3-4 renovações/hora)
- Consumo: 1,3W por cooler
- Ruído: 18-20 dBA (muito baixo)
- Fluxo: 30-40 CFM por cooler
- Posicionamento: 1 topo (sopra ↓) + 1 base (sopra ↑)

#### Controle de Umidade

- Desumidificadores Thermomatic (20W, sílica regenerável)
- Timer digital programável
- Higrômetro digital (±2% UR)
- Target: 45-55% UR

---

## Ordem de Execução

### Fase 1: Isolamento Térmico (2-3 dias)

1. Aplicar manta térmica (paredes opacas)
2. Instalar insulfilm G-70 (vidros)
3. Vedar com EVA 6mm (todas junções)
4. Fazer 8 furos passivos Ø15mm + tela

### Fase 2: Circulação Interna (1 dia)

1. Fixar cooler topo (145cm altura, sopra ↓)
2. Fixar cooler base (10cm altura, sopra ↑)
3. Passar cabo Ø8mm (vedado)
4. Conectar à fonte 12V 2A

### Fase 3: Controle Umidade (1 dia)

1. Posicionar desumidificador(es)
2. Conectar a timer digital
3. Instalar higrômetro
4. Programar ciclos

### Fase 4: Teste (3 dias - 72h)

1. Ligar sistema vazio
2. Monitorar temp/UR
3. Ajustar se necessário
4. Meta: 24-25°C, 48-52% UR, < 2°C gradiente

### Fase 5: Instrumentos (após estabilização)

- Instalar somente após 72h estável

---

## Ferramentas Necessárias

### Básicas

- Furadeira elétrica
- Brocas Ø8mm, Ø15mm
- Estilete 18mm
- Régua metálica 60cm
- Trena metálica
- Espátula plástica (aplicação insulfilm)
- Pulverizador 500ml

---

## Manutenção

### Rotina Recomendada

- **Semanal:** Verificar temp/UR
- **Mensal:** Inspecionar coolers girando
- **Trimestral:** Limpar pás dos coolers (pincel macio)
- **Semestral:** Verificar vedações
- **Anual:** Reapertar fixações

---

## Avisos Importantes

### Segurança

- Use EPIs apropriados (óculos, luvas)
- Trabalhe em ambiente ventilado
- Desconecte energia antes de furar
- Verifique voltagem dos equipamentos

### Execução

- Siga medidas especificadas rigorosamente
- Teste 72h antes de colocar instrumentos
- Monitore diariamente nas primeiras 2 semanas
- Mantenha backup (sílica gel) durante ajustes

---

## Contribuições

Contribuições são bem-vindas:

1. Fork do projeto
2. Crie branch (`git checkout -b feature/MinhaFeature`)
3. Commit (`git commit -m 'Adiciona MinhaFeature'`)
4. Push (`git push origin feature/MinhaFeature`)
5. Abra Pull Request

---

## Licença

Este projeto está sob a licença MIT.

---

## Contato e Suporte

- Abra uma [Issue](https://github.com/seu-usuario/projeto-cristaleira-guitarras/issues)
- Consulte documentação em `docs/`
- Verifique listas de materiais em `listas-compras/`

---

## Status do Projeto

- [x] Documentação técnica completa Cenário A+
- [x] Lista de materiais e fornecedores
- [x] Sistema de isolamento térmico
- [x] Sistema de circulação interna (2 coolers)
- [x] Análise de viabilidade e custos
- [ ] Testes em ambiente real
- [ ] Monitoramento de longo prazo (6+ meses)
- [ ] Dados reais de performance

---

**Última atualização:** Outubro 2025
**Versão:** 3.0
**Status:** Documentação completa - Aguardando testes práticos

---

## Histórico de Revisões

### v3.0 (Outubro 2025)
- Foco exclusivo no Cenário A+ (2 coolers)
- Arquivamento de cenários alternativos
- Simplificação da documentação
- Preparação para publicação GitHub

### v2.0 (Outubro 2025)
- Identificado conflito: coolers em furos destroem isolamento
- Criado Cenário A+: coolers INTERNOS (circulação sem troca de ar)
- Adicionado sistema 6 coolers premium
- Removida documentação obsoleta (movida para `_archive/`)
- Formalização da documentação (remoção de emojis)

### v1.0 (Setembro 2025)
- Versão inicial com ventilação forçada em furos
- Sistema de isolamento térmico
- Controle de umidade básico
