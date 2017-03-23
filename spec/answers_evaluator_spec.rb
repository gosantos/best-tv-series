require 'answers_evaluator'
require 'series'
require 'answer'

RSpec.describe AnswersEvaluator, "#evaluate" do

  before do
    @series = []
    @series.push Series.new('A', 'House of Cards', 'Você é House of Cards: ataca o problema com método e faz de tudo para resolver a situação.')
    @series.push Series.new('B', 'Game of Thrones', 'Você é Game of Thrones: não tem muita delicadeza nas ações, mas resolve o problema de forma prática.')
    @series.push Series.new('C', 'Lost', 'Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz sentido, mas no final dá tudo certo.')
    @series.push Series.new('D', 'Breaking Bad', 'Você é Breaking Bad: pra fazer acontecer você toma a liderança, mas sempre contando com seus parceiros.')
    @series.push Series.new('E', 'Silicon Valley', 'Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.')
  end

  it "ccaee" do
    user_answers = []
    user_answers.push Answer.new('c', "Só consegue lembrar do seu nome depois do café.")
    user_answers.push Answer.new('c', "Ajuda-a, mas questiona sua real identidade.")
    user_answers.push Answer.new('a', "Convence parte das pessoas a esperarem o próximo.")
    user_answers.push Answer.new('e', "Desabafa sobre como odeia PHP. Todo mundo na sala adora PHP.")
    user_answers.push Answer.new('e', "Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.")

    answers_evaluator = AnswersEvaluator.new
    expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.")
  end

  it "eeacc" do
    user_answers = []
    user_answers.push Answer.new('e', "Passa o café e conserta um erro no HTML.")
    user_answers.push Answer.new('e', "Testa se ela roda bem no Firefox. Não roda.")
    user_answers.push Answer.new('a', "Convence parte das pessoas a esperarem o próximo.")
    user_answers.push Answer.new('c', "Puxa um assunto e te lembram que já foi discutido semana passada.")
    user_answers.push Answer.new('c', "No ponto de ônibus mais uma vez, espero não errar a linha de novo.")

    answers_evaluator = AnswersEvaluator.new
    expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz sentido, mas no final dá tudo certo.")
  end

  it "edcba" do
    user_answers = []
    user_answers.push Answer.new('e', "Passa o café e conserta um erro no HTML.")
    user_answers.push Answer.new('d', "Oferece para caminharem juntos até um destino em comum.")
    user_answers.push Answer.new('c', "Você questiona a realidade, as coisas e tudo mais. Sobe de escada.")
    user_answers.push Answer.new('b', "Larga uma frase polêmica e vê uma pequena guerra se formar.")
    user_answers.push Answer.new('a', "Vou chamar aqui o meu Uber.")

    answers_evaluator = AnswersEvaluator.new
    expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é House of Cards: ataca o problema com método e faz de tudo para resolver a situação.")
  end


  it "abcde" do
    user_answers = []
    user_answers.push Answer.new('a', "Acorda cedo e come frutas cortadas metodicamente.")
    user_answers.push Answer.new('b', "Levanta a senhora e jura protegê-la com sua vida.")
    user_answers.push Answer.new('c', "Você questiona a realidade, as coisas e tudo mais. Sobe de escada.")
    user_answers.push Answer.new('d', "Sugere que os colegas trabalhem na ideia de um novo projeto.")
    user_answers.push Answer.new('e', "Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.")

    answers_evaluator = AnswersEvaluator.new
    expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.")
  end

  it "aaabb" do
    user_answers = []
    user_answers.push Answer.new('a', "Acorda cedo e come frutas cortadas metodicamente.")
    user_answers.push Answer.new('a', "Ela vai atrapalhar seu horário. Oculte o corpo.")
    user_answers.push Answer.new('a', "Convence parte das pessoas a esperarem o próximo.")
    user_answers.push Answer.new('e', "Desabafa sobre como odeia PHP. Todo mundo na sala adora PHP.")
    user_answers.push Answer.new('e', "Acho que descobri uma forma de fazer aquela senhora rodar no Firefox.")

    answers_evaluator = AnswersEvaluator.new
    expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é House of Cards: ataca o problema com método e faz de tudo para resolver a situação.")
  end

end
