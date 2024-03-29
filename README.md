<a name="topo-readme"></a>
# Embarca project

[![Ruby on Rails CI](https://github.com/PhilipeeX/embarca-project/actions/workflows/rubyonrails.yml/badge.svg)](https://github.com/PhilipeeX/embarca-project/actions/workflows/rubyonrails.yml) ![GitHub Tag](https://img.shields.io/github/v/tag/PhilipeeX/embarca-project?style=flat) ![Static Badge](https://img.shields.io/badge/rubocop-codestyle?style=flat&logo=rubocop&logoColor=white&label=code%20style&link=https%3A%2F%2Fgithub.com%2Frubocop%2Frubocop) ![Static Badge](https://img.shields.io/badge/passing-tests?style=flat&logo=github&logoColor=white&label=tests&link=https%3A%2F%2Fgithub.com%2FPhilipeeX%2Fembarca-project%2Factions) ![Static Badge](https://img.shields.io/badge/image-docker?style=flat&logo=docker&logoColor=white&label=Docker&labelColor=blue&color=green&link=https%3A%2F%2Fhub.docker.com%2Fr%2Fphilipex%2Fembarca-project%2Ftags) ![GitHub repo size](https://img.shields.io/github/repo-size/PhilipeeX/embarca-project?style=flat&label=Tamanho&color=green) ![GitHub issues](https://img.shields.io/github/issues/PhilipeeX/embarca-project?style=flat) ![GitHub closed issues](https://img.shields.io/github/issues-closed/Philipeex/embarca-project?style=flat) ![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/PhilipeeX/embarca-project?style=flat&label=Pull%20requests%20mergeados&color=purple)


## Screenshots ou  GIFs
![Gif](https://github.com/PhilipeeX/embarca-project/assets/85847179/6572a0f1-38e3-4b3a-af78-30f57a82c158)

> O projeto é uma aplicação Ruby on Rails que oferece uma interface para gerenciar e pesquisar cidades em diferentes estados do Brasil. A aplicação oferece uma rota para recuperar cidades aplicando filtros de busca por estado, busca por parte do nome da cidade e busca combinada por estado e parte do nome. Construído utilizando a versão 2.7.0 do Ruby e a versão 5.x do Rails, o sistema utiliza o PostgreSQL como banco de dados e é executado em um contêiner Docker com docker-compose.
## Stack utilizada

**Front-end:** SCSS

**Back-end:** Ruby 2.7.0, Rails 5.2.8

**Database:** PostgreSQL

## Rodando localmente

1) Clone o projeto

```bash
  git clone https://github.com/PhilipeeX/embarca-project
```

2) Entre no diretório do projeto

```bash
  cd embarca-project
```
3) Será necessário configurar as seguintes variáveis de ambiente em um arquivo .env na raiz do projeto

```bash
  # .env

  POSTGRES_USER=seu_usuario
  POSTGRES_PASSWORD=sua_senha
```
> OBS: Lembre-se de substituir seu_usuario e sua_senha pelos valores reais.<br>

4) Certifique-se de que nenhum outro serviço PostgreSQL está sendo executado na porta 5432.
```bash
  sudo lsof -i :5432
```
5) Caso algum serviço PostgreSQL esteja na porta 5432, pare o serviço com o seguinte comando:
```bash
  sudo service postgresql stop
```
6) Inicie o Docker

```bash
  docker-compose up -d
```

Acesse a aplicação em localhost porta 3000


## Rodando os testes

![Image](https://github.com/PhilipeeX/embarca-project/assets/85847179/b901d397-8bc2-4092-ad0c-67f4cb2658ad)
<br>
#### Acesse o pipeline de testes no link abaixo <br>
<a href="https://github.com/PhilipeeX/embarca-project/actions/workflows/rubyonrails.yml" target="_blank">GithubActions</a>
<br>
Para rodar os testes, execute o seguintes comandos:

Após ter acessado a aplicação no Docker, será necessário executar o comando abaixo
```bash
  docker-compose down
```
Inicie o postgresql service
```bash
  sudo service postgresql start
```
Reinicie o banco de dados e aplique as migrações.
```bash
  rails db:drop db:create db:migrate
```
Execute o comando de testes em RSpec
```bash
  bundle exec rspec --format progress
```
> Obs: No arquivo de CI/CD abaixo configurei uma automatização para esse processo de testes durante os Pull Requests

## Setups e deploys

#### Esse arquivo realiza uma série de tarefas automatizadas para melhorar a qualidade e facilitar o processo de integração contínua.


[Rubyonrails.yml](https://github.com/PhilipeeX/embarca-project/blob/main/.github/workflows/rubyonrails.yml)



- Executa testes automatizados.
- Verifica a qualidade do código usando linters como rubocop, garantindo consistência e boas práticas.
- Além disso, quando um PR é mergeado na 'main', configurei para que automaticamente uma nova imagem Docker seja construída e enviada para o Dockerhub.

[Imagem do projeto no Dockerhub](https://hub.docker.com/r/philipex/embarca-project)


# Atribuições

> [!TIP]
> - [x] Uma tabela com os estados do Brasil: Paraná, Santa Catarina e Rio Grande do Sul.
> - [x] Esta aplicação deve ser escrita com a versão 2.7.0 do Ruby e a versão 5.x do Rails.
> - [x] Esta aplicação deve usar o PostgreSQL como banco de dados.
> - [x] É necessário usar o Rubocop para garantir que seu código siga os padrões.<br>
    > <a href="https://github.com/PhilipeeX/embarca-project/pull/3" target="_blank">Pull Request</a>
#
> [!TIP]
> - [x] Uma tabela com algumas cidades do Paraná, Santa Catarina e Rio Grande do Sul (pelo menos 3 de cada estado).<br>
    > <a href="https://github.com/PhilipeeX/embarca-project/pull/5" target="_blank">Pull Request</a>
#
> [!TIP]
> - [x] Esta aplicação deve ser executada em um contêiner Docker com docker-compose.<br>
    >   <a href="https://github.com/PhilipeeX/embarca-project/pull/7" target="_blank">Pull Request</a>
#
> [!TIP]
> - [x] Uma rota para recuperar todas as cidades com base em alguns parâmetros recebidos: Estado e Parte do nome.
> - [x] Uma interface de usuário (frontend) para exibir todas as cidades que correspondem à pesquisa.
> - [x] Uma suíte de testes para esse cenário.<br>
    >  <a href="https://github.com/PhilipeeX/embarca-project/pull/10" target="_blank">Pull Request</a>

## Observações e destaques

- A solicitação do teste técnico incluiu a criação de uma suíte de testes específica para o cenário descrito. ("4. A test suite for this scenario").
- Foi enfatizado que o código não deveria gerar reclamações pelo Rubocop. ("1. Your code should not have any Rubocop complain").
- Ao considerar a extensão da suíte de testes RSpec para atender aos requisitos do cenário, foi observado que a métrica Metrics/BlockLength do Rubocop ultrapassou o limite em um dos blocos RSpec.describe.
- Para manter a conformidade com a métrica do Rubocop e garantir a legibilidade do código, foi necessário desativar temporariamente a verificação Metrics/BlockLength usando o comentário ``# rubocop:disable Metrics/BlockLength`` no bloco específico.
<br>
> <a href="https://github.com/PhilipeeX/embarca-project/blob/main/spec/controllers/cities/cities_filter_spec.rb" target="_blank">spec/controllers/cities/cities_filter_spec.rb</a><br>

Essas medidas foram tomadas para cumprir tanto a exigência de criação da suíte de testes quanto a de ausência de reclamações do Rubocop, proporcionando um código claro e eficiente.

## Github Workflow
O fluxo de trabalho e como as tarefas foram desenvolvidas pode ser acessado em: <a href="https://github.com/users/PhilipeeX/projects/38/views/1" target="_blank">Board das tarefas</a>

## Apêndice
Author: <strong>Philipe Rodrigues (dev.philipe@outlook.com)</strong>

<p align="right"><a href="#topo-readme">Voltar ao topo</a></p>
