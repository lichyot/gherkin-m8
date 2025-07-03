# 🧪 Gherkin – Módulo 8

Este repositório contém os **critérios de aceitação escritos em Gherkin**, referentes ao **Módulo 8** do curso de Qualidade de Software. As funcionalidades abordadas envolvem fluxo de produto, login e cadastro.

---

## 🛒 [US-0001] – Configurar Produto

**Critérios de aceitação:**
1. As seleções de **cor**, **tamanho** e **quantidade** devem ser obrigatórias  
2. Deve permitir apenas **10 produtos por venda**  
3. Ao clicar no botão **“limpar”**, o formulário deve retornar ao **estado original**

---

## 🔐 [US-0002] – Login na Plataforma

**Critérios de aceitação:**
1. Ao inserir **dados válidos**, o usuário deve ser direcionado para a tela de **checkout**  
2. Ao inserir dados inválidos em qualquer campo, deve exibir a mensagem:  
   > **"Usuário ou senha inválidos"**

---

## 📝 [US-0003] – Tela de Cadastro (Checkout)

**Critérios de aceitação:**
1. O cadastro deve ser realizado com todos os **campos obrigatórios** (marcados com asteriscos `*`)  
2. Não deve aceitar **e-mail com formato inválido** → exibir **mensagem de erro**  
3. Ao tentar cadastrar com **campos vazios**, deve exibir **mensagem de alerta**

---

📄 Arquivos `.feature` correspondentes a cada história de usuário estão disponíveis neste repositório.
