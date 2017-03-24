require_relative 'lib/series'
require_relative 'lib/series_bundle'
require_relative 'lib/question'
require_relative 'lib/questions_bundle'
require_relative 'lib/answer'
require_relative 'lib/answers_bundle'
require_relative 'lib/user_interface'
require_relative 'lib/answers_evaluator'

# adding Series

series = []
series.push Series.new(SeriesBundle::HOUSE_OF_CARDS_ID, SeriesBundle::HOUSE_OF_CARDS_NAME, SeriesBundle::HOUSE_OF_CARDS_QUOTE)
series.push Series.new(SeriesBundle::GAME_OF_THRONES_ID, SeriesBundle::GAME_OF_THRONES_NAME, SeriesBundle::GAME_OF_THRONES_QUOTE)
series.push Series.new(SeriesBundle::LOST_ID, SeriesBundle::LOST_NAME, SeriesBundle::LOST_QUOTE)
series.push Series.new(SeriesBundle::BREAKING_BAD_ID, SeriesBundle::BREAKING_BAD_NAME, SeriesBundle::BREAKING_BAD_QUOTE)
series.push Series.new(SeriesBundle::SILICON_VALLEY_ID, SeriesBundle::SILICON_VALLEY_NAME, SeriesBundle::SILICON_VALLEY_QUOTE)

# adding Questions and its Answers

questions = []

question = Question.new(QuestionsBundle::QUESTION_1_ID, QuestionsBundle::QUESTION_1_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_1_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_A_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_1_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_B_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_1_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_C_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_1_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_D_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_1_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_1_ANSWER_E_TITLE)
questions.push question

question = Question.new(QuestionsBundle::QUESTION_2_ID, QuestionsBundle::QUESTION_2_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_2_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_A_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_2_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_B_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_2_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_C_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_2_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_D_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_2_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_2_ANSWER_E_TITLE)
questions.push question

question = Question.new(QuestionsBundle::QUESTION_3_ID, QuestionsBundle::QUESTION_3_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_3_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_A_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_3_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_B_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_3_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_C_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_3_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_D_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_3_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_3_ANSWER_E_TITLE)
questions.push question

question = Question.new(QuestionsBundle::QUESTION_4_ID, QuestionsBundle::QUESTION_4_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_4_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_A_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_4_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_B_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_4_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_C_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_4_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_D_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_4_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_4_ANSWER_E_TITLE)
questions.push question

question = Question.new(QuestionsBundle::QUESTION_5_ID, QuestionsBundle::QUESTION_5_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_5_ANSWER_A_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_A_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_5_ANSWER_B_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_B_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_5_ANSWER_C_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_C_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_5_ANSWER_D_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_D_TITLE)
question.add_answer Answer.new(AnswersBundle::QUESTION_5_ANSWER_E_SERIE_ID, AnswersBundle::QUESTION_5_ANSWER_E_TITLE)
questions.push question

ui = UserInterface.new
user_answers = ui.run(questions)

answers_evaluator = AnswersEvaluator.new
puts answers_evaluator.evaluate(series, user_answers)
