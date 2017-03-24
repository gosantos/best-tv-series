require 'answers_evaluator'
require 'series'
require "series_bundle"
require 'answer'
require "answers_bundle"

RSpec.describe AnswersEvaluator, "#evaluate" do

  before do
    @series = []
    @series.push Series.new(SeriesBundle::HOUSE_OF_CARDS_ID, SeriesBundle::HOUSE_OF_CARDS_NAME, SeriesBundle::HOUSE_OF_CARDS_QUOTE)
    @series.push Series.new(SeriesBundle::GAME_OF_THRONES_ID, SeriesBundle::GAME_OF_THRONES_NAME, SeriesBundle::GAME_OF_THRONES_QUOTE)
    @series.push Series.new(SeriesBundle::LOST_ID, SeriesBundle::LOST_NAME, SeriesBundle::LOST_QUOTE)
    @series.push Series.new(SeriesBundle::BREAKING_BAD_ID, SeriesBundle::BREAKING_BAD_NAME, SeriesBundle::BREAKING_BAD_QUOTE)
    @series.push Series.new(SeriesBundle::SILICON_VALLEY_ID, SeriesBundle::SILICON_VALLEY_NAME, SeriesBundle::SILICON_VALLEY_QUOTE)
  end

  describe "something" do
    it "ccaee" do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_E_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é Silicon Valley: vive a tecnologia o tempo todo e faz disso um mantra para cada situação no dia.")
    end

    it "eeacc" do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_C_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq("Você é Lost: faz as coisas sem ter total certeza se é o caminho certo ou se faz sentido, mas no final dá tudo certo.")
    end

    it "edcba" do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_D_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_B_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_A_TITLE)

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
end
