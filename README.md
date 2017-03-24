# best-tv-series

## Descrição

Você foi contratado por um site de humor geek para programar um quiz que diz que série de TV você é baseado em como você age em algumas situações do dia-a-dia.
O quiz é composto por 5 perguntas com 5 alternativas de resposta cada. Cada alternativa corresponde a uma série.
Baseado nas respostas do usuário, seu algoritmo deverá definir qual série melhor representa o usuário que está respondendo o quiz.

## Pré-requisitos

Make sure you have all of the following prerequisites installed in your machine:

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
Primeiramente eu comecei criando os diretorios para criar um ambiente organizado e facilmente testável.

Após, comecei criando os modelos: Question, Answer e Series

O modelo Question, recebe o id (número da pergunta), o title (titulo da pergunta) e as answers (possiveis respostas).

O modelo Answer, recebe series_id (identificador que será usado para saber a qual serie corresponde essa alternativa, visto que as alternativas devem ser randômicas) e o title (conteudo da pergunta)

O modelo Series, recebe o id e o name (nome da serie)

Optei por não criar um arquivo de parser e usar tokens ou uma regular expression e parsear os dados referentes as series, perguntas e respostas. Então, acabei inicializando os dados no arquivo de entrada da aplicação.

Testes
#ccaee
#eeacc
#edcba
#abcde
#aaabb

A classe user_interface, mostra as perguntas e alternativas para o usário, ela também salva as respostas.

Na classe answers_evaluator as respostas do usuário são processadas.
