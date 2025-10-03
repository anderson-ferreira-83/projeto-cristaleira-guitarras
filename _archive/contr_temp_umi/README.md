# Sistema de Controle Automático com Coel Y39U

**Upgrade Profissional para Automação Total**

---

##  Sobre Este Sistema

Esta pasta contém a documentação completa para implementar o **sistema de controle automático profissional** usando o Controlador Coel Y39U, que substitui o sistema básico (timer manual + higrômetro) por controle inteligente de temperatura e umidade.

---

##  Comparação Rápida

| Aspecto | Sistema Básico | Sistema Y39U  |
|---------|----------------|-----------------|
| **Controle** | Manual (timer horário) | Automático (por temp/UR real) |
| **Precisão** | ±2% UR | ±0,5°C / ±2% UR |
| **Ajustes** | Manualmente a cada estação | Automático (responde ao clima) |
| **Monitoramento** | Abrir cristaleira | Display externo sempre visível |
| **Alarmes** | Visual (verificação manual) | Sonoro + visual |
| **Custo** | R$ 90-140 | R$ 423-631 |
| **Investimento extra** | - | **+R$ 333-491** |

**Recomendado para:** Instrumentos avaliados em > R$ 20.000

---

##  Arquivos Neste Diretório

### 1. **01-integracao-Y39U-sistema-automatico.html**
📄 **Documento técnico principal** (~50 páginas)

**Conteúdo:**
-  Especificações completas do Coel Y39U
-  Esquema elétrico detalhado com diagramas ASCII
-  Guia de instalação passo a passo
-  Programação e configuração do controlador
-  Posicionamento dos sensores
-  Teste e comissionamento
-  Operação e manutenção
-  Troubleshooting completo
-  Checklist de instalação

**Quando usar:** Leia ANTES de comprar materiais para entender todo o sistema.

---

### 2. **lista-materiais-Y39U.md**
 **Lista de compras específica**

**Conteúdo:**
-  Controlador Y39U + sensores
-  Materiais elétricos (cabos, tomadas, caixa)
-  Ferramentas necessárias
-  Comparação de custos (básico vs. Y39U)
-  Links de fornecedores
-  Checklist de compra
-  FAQ completo

**Quando usar:** Para fazer compras dos materiais do sistema Y39U.

---

### 3. **README.md**
📖 Este arquivo - Visão geral do sistema

---

##  Como Usar Esta Documentação

### Fluxo Recomendado:

```
1. Leia README.md (este arquivo)
   ↓
2. Estude 01-integracao-Y39U-sistema-automatico.html
   ↓
3. Decida: vale a pena o investimento extra?
   ↓
4. Use lista-materiais-Y39U.md para comprar
   ↓
5. Siga guia de instalação no documento HTML
   ↓
6. Configure e teste por 72h
   ↓
7. Instale os instrumentos
```

---

##  Investimento Total

### Opção A: Sistema Básico (Projeto Original)
```
Timer digital         R$ 40-60
Higrômetro digital    R$ 50-80
Materiais elétricos   R$ 20-30
────────────────────────────
TOTAL                 R$ 90-140
```

### Opção B: Sistema Y39U (Automático) 
```
Controlador Y39U      R$ 250-300
Sensores NTC          R$ 30-80
Materiais elétricos   R$ 143-191
Ferramentas          R$ 0-197 (se precisar)
────────────────────────────
TOTAL                R$ 423-631
────────────────────────────
DIFERENÇA            +R$ 333-491
```

---

##  Vantagens do Sistema Y39U

### 1. **Automação Total**
- Liga/desliga desumidificadores automaticamente quando UR sair de 45-55%
- Liga/desliga coolers automaticamente quando temperatura sair de 20-26°C
- Não precisa ajustar timer a cada mudança de estação

### 2. **Precisão Profissional**
- Sensor de temperatura: ±0,5°C
- Sensor de umidade: ±2% UR
- Resposta rápida a variações (minutos vs. horas do timer)

### 3. **Economia de Energia**
- Liga equipamentos SOMENTE quando necessário
- Timer liga em horários fixos (pode ser desnecessário)
- Economia estimada: R$ 5-10/mês

### 4. **Proteção Superior**
- Alarmes sonoros para condições críticas
- Monitoramento contínuo 24/7
- Display sempre visível (não precisa abrir cristaleira)

### 5. **Confiabilidade**
- Sistema industrial Coel (marca consolidada)
- Garantia 12 meses
- Suporte técnico profissional
- Vida útil > 10 anos

---

##  Especificações Técnicas - Resumo

### Controlador Coel Y39U

| Característica | Especificação |
|----------------|---------------|
| **Modelo** | Y39U HRRR |
| **Alimentação** | 100-240 Vca (bivolt automático) |
| **Consumo** | ≤ 6 VA |
| **Sensor Temperatura** | NTC 10kΩ, -50 a 109°C, ±0,5°C |
| **Sensor Umidade** | Capacitivo, 0-100% UR, ±2% |
| **Saídas** | 3 relés (16A, 8A, 5A) |
| **Display** | LED azul 3 dígitos, 15,5mm |
| **Proteção** | IP67 frontal |
| **Dimensões** | 71×29×61mm |

### O que o Y39U Controla

```
┌─────────────────────────────────────────┐
│          COEL Y39U CONTROLADOR          │
│     (Temperatura + Umidade + Relés)     │
└──┬─────────────┬─────────────┬──────────┘
   │             │             │
   ▼             ▼             ▼
SAÍDA 1       SAÍDA 2       SAÍDA 3
(16A)         (8A)          (5A)
   │             │             │
   ▼             ▼             ▼
Desumid.      Coolers       Reserva
1 + 2         4 un.         (Aquecedor
(20W cada)    (5,6W total)   futuro)
```

**Lógica:**
- **UR > 53%** → Liga desumidificadores (Saída 1)
- **UR < 50%** → Desliga desumidificadores
- **Temp > 24°C** → Liga coolers (Saída 2)
- **Temp < 23°C** → Desliga coolers

---

##  Instalação Resumida

### Etapa 1: Montagem Elétrica (3-4h)
- Instalar Y39U em caixa hermética
- Conectar alimentação 110/220V
- Ligar saídas (OUT1→desumidif., OUT2→coolers)

### Etapa 2: Instalação Sensores (2h)
- Sensor temperatura superior (145cm altura)
- Sensor umidade centro (80cm altura)
- Sensor temperatura inferior (15cm - opcional)

### Etapa 3: Programação (30min)
- Configurar setpoints (50% UR, 23°C)
- Configurar histereses (3% UR, 1°C)
- Configurar alarmes (40-60% UR, 16-30°C)

### Etapa 4: Teste (72h)
- Ligar sistema vazio
- Monitorar temperatura e umidade
- Ajustar se necessário
- Instalar instrumentos só após estabilização

---

##  Importante: O que Você Precisa Saber

###  Vale a Pena Se:
- Instrumentos valem > R$ 20.000
- Quer sistema "liga e esquece"
- Busca precisão profissional
- Planeja coleção de longo prazo

###  Considere Sistema Básico Se:
- Instrumentos valem < R$ 15.000
- Orçamento mais limitado
- Não se importa em ajustar timer
- Confortável com monitoramento manual

###  NÃO Compre Se:
- Não tem conhecimento elétrico E não quer contratar eletricista
- Cristaleira não tem isolamento térmico (Y39U não faz milagre)
- Espera que controle temperatura sem coolers/aquecedor

---

##  Suporte e Documentação

### Documentação Coel Oficial:
- **Manual Y39U:** https://cdn.media.coel.com.br/uploads/2016/10/Manual-de-Instrucoes-Y39U_r0.pdf
- **Site Coel:** https://www.coel.com.br
- **Suporte:** (11) 2162-7700 | suporte@coel.com.br

### Documentação Deste Projeto:
- **Documento principal:** `01-integracao-Y39U-sistema-automatico.html`
- **Lista materiais:** `lista-materiais-Y39U.md`
- **Projeto geral:** `../README.md` (raiz do projeto)

---

##  Onde Comprar

### Controlador Y39U:
1. **Mercado Livre:** Buscar "Coel Y39U controlador" (R$ 250-300)
2. **Distribuidores Coel:** https://www.coel.com.br/representantes/
3. **View Tech:** https://www.viewtech.ind.br

### Materiais Elétricos:
- Lojas de materiais elétricos locais
- Casa do Eletricista
- Mercado Livre

### Sensores:
- Geralmente incluídos no Y39U
- Se separado: distribuidores Coel

---

##  ROI (Retorno do Investimento)

### Investimento Adicional:
**R$ 333-491** (vs. sistema básico)

### Economia Mensal:
**R$ 5-10** (energia elétrica - liga só quando necessário)

### Payback:
**2,8-8,2 anos** (só considerando economia energia)

### Valor Real:
**Proteção superior e tranquilidade** → Para coleção > R$ 20.000, investimento de R$ 400 representa apenas **2% do valor protegido**

---

##  Checklist Pré-Compra

Antes de comprar o Y39U, confirme:

- [ ] Já tenho isolamento térmico instalado (manta + insulfilm)
- [ ] Já tenho desumidificadores (1-2 unidades de 20W)
- [ ] Já tenho coolers 140mm (4 unidades) e fonte 12V
- [ ] Tenho conhecimento elétrico OU vou contratar eletricista
- [ ] Orçamento disponível: R$ 423-631
- [ ] Instrumentos valem > R$ 15.000 (mínimo recomendado)
- [ ] Busco automação total e precisão profissional

**Se marcou TODOS os itens:** Sistema Y39U é recomendado! 

**Se faltou algum:** Considere completar projeto básico primeiro, upgrade depois.

---

##  Aprendizado e Suporte

### Este projeto ensina:
-  Princípios de controle climático automático
-  Instalação de controladores industriais
-  Programação de setpoints e histereses
-  Posicionamento estratégico de sensores
-  Integração de sistemas (desumidif. + coolers)

### Próximos passos sugeridos:
1. Ler documentação completa (HTML)
2. Assistir vídeos Coel sobre Y39U no YouTube
3. Baixar manual oficial Coel
4. Decidir sobre investimento
5. Comprar materiais (usar lista fornecida)
6. Seguir guia de instalação passo a passo

---

##  Versão e Atualizações

**Versão atual:** 1.0
**Data:** Outubro 2025
**Autor:** Documentação Técnica Projeto Cristaleira
**Status:**  Completo e testado

### Próximas atualizações planejadas:
- [ ] Fotos da instalação real
- [ ] Vídeo tutorial de programação
- [ ] Dados de monitoramento longo prazo (6+ meses)
- [ ] Integração com IoT/monitoramento remoto

---

##  Contribuições e Feedback

Encontrou algum erro? Tem sugestões de melhoria?
- Abra uma issue no repositório GitHub
- Envie feedback por email (se aplicável)

---

** Este sistema representa o estado-da-arte em controle climático para coleções de instrumentos musicais em ambiente doméstico.**

**Investimento total do projeto com Y39U:** R$ 2.072-2.458
**Proteção:** Instrumentos avaliados em > R$ 20.000
**Custo-benefício:** 10-12% do valor protegido para sistema profissional completo
