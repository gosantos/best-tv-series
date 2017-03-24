require 'controllers/answers_evaluator'
require 'models/series'
require 'helpers/series_bundle'
require 'models/answer'
require 'helpers/answers_bundle'

RSpec.describe AnswersEvaluator, '#evaluate' do
  before do
    @series = []
    @series.push Series.new(SeriesBundle::HOUSE_OF_CARDS_ID, SeriesBundle::HOUSE_OF_CARDS_NAME, SeriesBundle::HOUSE_OF_CARDS_QUOTE)
    @series.push Series.new(SeriesBundle::GAME_OF_THRONES_ID, SeriesBundle::GAME_OF_THRONES_NAME, SeriesBundle::GAME_OF_THRONES_QUOTE)
    @series.push Series.new(SeriesBundle::LOST_ID, SeriesBundle::LOST_NAME, SeriesBundle::LOST_QUOTE)
    @series.push Series.new(SeriesBundle::BREAKING_BAD_ID, SeriesBundle::BREAKING_BAD_NAME, SeriesBundle::BREAKING_BAD_QUOTE)
    @series.push Series.new(SeriesBundle::SILICON_VALLEY_ID, SeriesBundle::SILICON_VALLEY_NAME, SeriesBundle::SILICON_VALLEY_QUOTE)
  end

  describe 'Given the following sequence of answers c-c-a-e-e' do
    it 'should return the Silicon Valley Quote' do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_E_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq(SeriesBundle::SILICON_VALLEY_QUOTE)
    end
  end

  describe 'Given the following sequence of answers e-e-a-c-c' do
    it 'should return the Lost Quote' do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_C_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq(SeriesBundle::LOST_QUOTE)
    end
  end

  describe 'Given the following sequence of answers e-d-c-a-b' do
    it 'should return the House of Cards Quote' do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_E_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_D_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_B_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_A_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq(SeriesBundle::HOUSE_OF_CARDS_QUOTE)
    end
  end

  describe 'Given the following sequence of answers a-b-c-d-e' do
    it 'should return the Silicon Valley Quote' do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_B_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_C_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_D_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_E_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq(SeriesBundle::SILICON_VALLEY_QUOTE)
    end
  end

  describe 'Given the following sequence of answers a-b-c-d-e' do
    it 'should return the House of Cards Quote' do
      user_answers = []
      user_answers.push Answer.new(AnswersBundle::QUESTION_1_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_2_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_4_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_B_TITLE)
      user_answers.push Answer.new(AnswersBundle::QUESTION_5_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_B_TITLE)

      answers_evaluator = AnswersEvaluator.new
      expect(answers_evaluator.evaluate(@series, user_answers)).to eq(SeriesBundle::HOUSE_OF_CARDS_QUOTE)
    end
  end
end
