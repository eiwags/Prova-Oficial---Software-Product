# 📦 Recomendação Inteligente de Produtos

Este projeto modela e documenta uma funcionalidade estratégica de **recomendações personalizadas de produtos**, com base em dados históricos de compra, comportamento do cliente e análise preditiva.

## 🎯 Objetivo

Aumentar o ticket médio e a conversão de vendas por meio de sugestões inteligentes e contextualizadas, promovendo uma experiência de compra mais relevante e eficiente.

## 🧱 Estrutura do Projeto

- `der.sql` — Modelo relacional do banco de dados
- `modelo_dados.png` — Diagrama Entidade-Relacionamento

## 🔄 Fluxo da Funcionalidade

1. Captura de comportamento de compra
2. Geração de sugestões com `Score`
3. Armazenamento em tabela `Recomendacao`
4. Comparação com compras efetivas (via `Item_Pedido`)
5. Feedback do cliente retroalimenta o sistema

## ⚙️ Proposta de Expansão

- Canal de recomendação (ex: e-mail, app)
- Registro de conversão por sugestão
- Gatilhos para análise de eficácia
