# best-tv-series


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
