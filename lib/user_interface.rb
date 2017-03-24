require_relative 'common_bundle'

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
    letters = ('a'..'e').to_a
    answers.shuffle!
    answers.each do |answer|
      puts "#{letters.slice!(0)}) #{answer.title}"
    end
  end

  def get_user_entry(answers)
    puts CommonBundle::ALTERNATIVES_USER_MSG

    case gets.chomp.downcase
    when 'a'
      @user_answers.push answers[0]
    when 'b'
      @user_answers.push answers[1]
    when 'c'
      @user_answers.push answers[2]
    when 'd'
      @user_answers.push answers[3]
    when 'e'
      @user_answers.push answers[4]
    else
      puts CommonBundle::INVALID_ALTERNATIVE_MSG
    end
  end
end
