require_relative "lib/model/series"
require_relative "lib/model/answer"
require_relative "lib/model/question"
require_relative "lib/util/user_interface"

#adding Series

series = []
series.push Series.new('A', 'House of Cards', 'Você é House of Cards: ataca o problema com método e faz de
tudo para resolver a situação.')
series.push Series.new('B', 'Game of Thrones', 'Você é Game of Thrones: não tem muita delicadeza nas ações,
mas resolve o problema de forma prática.')
series.push Series.new('C', 'Lost', 'Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz
sentido, mas no final dá tudo certo.')
series.push Series.new('D', 'Breaking Bad', 'Você é Breaking Bad: pra fazer acontecer você toma a liderança,
mas sempre contando com seus parceiros.')
series.push Series.new('E', 'Silicon Valley', 'Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um
mantra para cada situação no dia.')

#adding Questions and its Answers

questions = []

question = Question.new(1, "De manhã, você: ")
question.add_answer Answer.new('a', "Acorda cedo e come frutas cortadas metodicamente.")
question.add_answer Answer.new('b', "Sai da cama com o despertador e se prepara para a batalha da semana.")
question.add_answer Answer.new('c', "Só consegue lembrar do seu nome depois do café.")
question.add_answer Answer.new('d', "Levanta e faz café pra todos da casa.")
question.add_answer Answer.new('e', "Passa o café e conserta um erro no HTML.")

questions.push question

question = Question.new(2, "Indo para o trabalho você encontra uma senhora idosa caída na rua.")
question.add_answer Answer.new('a', "Ela vai atrapalhar seu horário. Oculte o corpo.")
question.add_answer Answer.new('b', "Levanta a senhora e jura protegê-la com sua vida.")
question.add_answer Answer.new('c', "Ajuda-a, mas questiona sua real identidade.")
question.add_answer Answer.new('d', "Oferece para caminharem juntos até um destino em comum.")
question.add_answer Answer.new('e', "Testa se ela roda bem no Firefox. Não roda.")

questions.push question

question = Question.new(3, "Chega no prédio e o elevador está cheio.")
question.add_answer Answer.new('a', "Convence parte das pessoas a esperarem o próximo.")
question.add_answer Answer.new('b', "Ignora as pessoas no elevador e entra de qualquer forma.")
question.add_answer Answer.new('c', "Você questiona a realidade, as coisas e tudo mais. Sobe de escada.")
question.add_answer Answer.new('d', "Com uma leve intimidação passivo-agressiva, encontra um lugar no elevador.")
question.add_answer Answer.new('e', "Cria um app que mostra a lotação do elevador. Vende o app e fica milionário.")

questions.push question

question = Question.new(4, "Você chega no trabalho e as convenções sociais te obrigam a puxar assunto.")
question.add_answer Answer.new('a', "Fala sobre a política, eleições, como tudo é um absurdo.")
question.add_answer Answer.new('b', "Larga uma frase polêmica e vê uma pequena guerra se formar.")
question.add_answer Answer.new('c', "Puxa um assunto e te lembram que já foi discutido semana passada.")
question.add_answer Answer.new('d', "Sugere que os colegas trabalhem na ideia de um novo projeto.")
question.add_answer Answer.new('e', "Desabafa sobre como odeia PHP. Todo mundo na sala adora PHP.")

questions.push question

question = Question.new(5, "A pauta pegou o dia todo, mas você está indo para casa.")
question.add_answer Answer.new('a', "Vou chamar aqui o meu Uber.")
question.add_answer Answer.new('b', "Pegarei o bus junto com o resto do povo.")
question.add_answer Answer.new('c', "No ponto de ônibus mais uma vez, espero não errar a linha de novo.")
question.add_answer Answer.new('d', "Vou de carro, mas ofereço uma carona para os colegas.")
question.add_answer Answer.new('e', "Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.")

questions.push question

ui = UserInterface.new
ui.run(questions)
