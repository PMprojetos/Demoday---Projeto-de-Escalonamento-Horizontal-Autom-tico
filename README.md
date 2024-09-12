# Prova de Conceito: Escalonamento Horizontal durante a Black Friday

## Descrição do Projeto

Este projeto foi desenvolvido em parceria para a apresentação de uma Prova de Conceito (POC), abordando formas de lidar com os desafios enfrentados durante eventos de alto tráfego, como a Black Friday, e como gerenciar os picos de acesso aos sistemas. Criamos um cenário em que uma agência fictícia de viagens enfrenta sobrecarga nos servidores ao oferecer promoções e um sorteio de pacotes de viagem durante a Black Friday.

## Cenário de Teste

Para ilustrar o problema, montamos o seguinte cenário:

- **Evento:** Sorteio de uma viagem dos sonhos.
- **Participantes:** Necessário cadastrar nome, e-mail e o motivo pelo qual merecem ganhar.
- **Expectativa:** Picos de milhares de inscrições simultâneas, gerando alta carga no sistema.

## Infraestrutura e Tecnologias Utilizadas

Para suportar esse cenário, utilizamos uma infraestrutura moderna e robusta:

- **Cloud Provider:** Google Cloud Platform (GCP) com Google Kubernetes Engine (GKE) para orquestrar containers.
- **IaC (Infraestrutura como Código):** Gerenciamento via Terraform.
- **CI/CD:** Pipelines de integração e entrega contínua utilizando GitLab.
- **Aplicação Web:** Baseada em PHP + Apache.
- **Banco de Dados:** MySQL para armazenamento dos dados.
- **Armazenamento:** NFS Storefile para garantir persistência dos dados em volumes separados.
- **Monitoramento:** Prometheus para coleta de métricas e Grafana para visualização e alertas.

## Desafios de Tráfego durante a Black Friday

Imagine a seguinte situação durante a Black Friday:

- **Sorteio Especial:** A agência fictícia "Avanti Viagens Descomplicadas" oferece uma viagem dos sonhos para um destino paradisíaco.
- **Alta Participação:** Milhares de pessoas se cadastrando simultaneamente.
- **Desafios Operacionais:** A alta demanda gera picos de acesso, podendo resultar em lentidão ou quedas do sistema.

## Solução Técnica

Para resolver o problema, utilizamos Kubernetes para escalonamento horizontal. Veja como funciona:

1. **Detecção de Tráfego:** O sistema detecta um aumento súbito de tráfego.
2. **Escalabilidade Automática:** O Kubernetes adiciona novos pods automaticamente para lidar com a carga extra.
3. **Distribuição de Carga:** O balanceador de carga distribui eficientemente o tráfego entre os pods.
4. **Manutenção de Desempenho:** O site permanece rápido e responsivo, mesmo sob alta pressão.

### Exemplo Prático: O Dia do Sorteio

- **19:00:** O sorteio é lançado, e o tráfego começa a subir.
- **19:05:** Kubernetes detecta o aumento de acessos e escala os pods.
- **19:10:** A infraestrutura ajusta-se automaticamente, adicionando novos recursos conforme necessário.
- **19:15:** O site permanece estável, permitindo a participação de todos os usuários.

## Benefícios da Solução

A solução proposta oferece os seguintes benefícios:

- **Alta Disponibilidade:** O site continua acessível durante todo o evento.
- **Escalabilidade Automática:** A infraestrutura se ajusta em tempo real aos picos de tráfego.
- **Eficiência Operacional:** Reduz os custos operacionais e minimiza a necessidade de intervenção manual.
- **Satisfação do Cliente:** Garantimos uma experiência impecável para os usuários, aumentando a confiança na marca "Avanti Viagens Descomplicadas".

## Conclusão

Nossa solução de escalonamento horizontal com Kubernetes é essencial para enfrentar os desafios da Black Friday, proporcionando:

- **Confiabilidade:** Seu site sempre disponível, mesmo nos momentos de maior tráfego.
- **Adaptabilidade:** Ajuste automático às demandas de carga em tempo real.
- **Eficiência:** Operações simplificadas e redução de custos.

---

Esperamos que este projeto demonstre a importância de uma infraestrutura bem planejada e escalável para garantir o sucesso durante eventos de alto tráfego.




