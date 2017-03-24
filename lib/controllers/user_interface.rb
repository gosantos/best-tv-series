require_relative '../helpers/common_bundle'

# this class is responsbile to interact with the user
class UserInterface
  attr_accessor :user_answers

  def initialize
    @user_answers = []
  end

  def run(questions)
    print_questions(questions)

    @user_answers
  end

  private

  def print_questions(questions)
    numbers = (1..5).to_a

    questions.each do |question|
      puts "#{numbers.slice!(0)}. #{question.title}"
      answers = question.answers
      print_answers(answers)
      get_user_entry(answers)
    end
  end

  def print_answers(answers)
    # this is used in order to create fake labels to the answers
    letters = ('a'..'e').to_a
    # the answers are shuffled to create a random order
    answers.shuffle!
    answers.each do |answer|
      puts "#{letters.slice!(0)}) #{answer.title}"
    end
  end

  def get_user_entry(answers)
    letters = ('a'..'e').to_a
    begin
      puts CommonBundle::ALTERNATIVES_USER_MSG
      entry = gets.chomp.downcase
    end while !letters.include? entry
    @user_answers.push answers[letters.index(entry)]
  end
end
