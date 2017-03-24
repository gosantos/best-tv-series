# best-tv-series

## Descrição

Você foi contratado por um site de humor geek para programar um quiz que diz que série de TV você é baseado em como você age em algumas situações do dia-a-dia.
O quiz é composto por 5 perguntas com 5 alternativas de resposta cada. Cada alternativa corresponde a uma série.
Baseado nas respostas do usuário, seu algoritmo deverá definir qual série melhor representa o usuário que está respondendo o quiz.

## Pré-requisitos

Para rodar a aplicação as seguintes dependencias são necessárias:

* Git - [Download & Install Git](https://git-scm.com/downloads)
* Ruby - [Download & Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* Bundler - [Download & Install Bundler](https://github.com/bundler/bundler)

## Clonando o repositório

```bash
$ git clone https://github.com/gosantos/best-tv-series.git
```

## Instalando as dependencias

```bash
$ cd best-tv-series
$ bundle install
```

## Iniciando a aplicação

```bash
$ ruby best-tv-series.rb
```

Para rodar a aplicação um milhão de vezes o seguinte comando pode ser usado no bash:
```bash
$ for i in {1..1000000}; do ruby best_tv_series.rb; done
```

## Testes automatizados

```bash
$ bin/rspec --format doc
```

## Solução
Como a ideia era criar uma aplicação de console sem o uso de dependencias externas, eu tentei manter a aplicação o mais simples possível.

Primeiramente eu criei as classes Question, Answer e Series, que são as classes que modelam os principais tipos de dados do problema.

A classe UserInterface ficou com a responsabilidade de mostrar as perguntas e alternativas para o usuário, assim como também armazenar as escolhas dele.

Depois a classe que implementa o algoritmo foi desenvolvida: AnswersEvaluator, juntamente com os testes referentes a essa classe também.

Quando tudo estava funcionando como esperado, comecei o refactoring seguindo o ciclo: vermelho->verde->refactoring.

Nesse ponto, os bundles foram adicionados para facilitar em casos de alteração das mensagens.

Por fim, utilizei um analizador de código estático para remover o máximo de Code Smell possível.
