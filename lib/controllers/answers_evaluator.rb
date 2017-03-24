require 'date'
require_relative '../helpers/common_bundle'
# this class contains the algorithm responsible for getting the user answers
# and check which TV Show fits better to the user
class AnswersEvaluator
  def initialize
    # this hash stores the "real" alternative label
    # => since the letters are shuffled,
    # => each hash letter will use the Answer.series_id property to identify the corresponding series
    @vote_counter = { a: [0, nil], b: [0, nil], c: [0, nil], d: [0, nil], e: [0, nil] }
    @final_answer = CommonBundle::DEFAULT_FINAL_ANSWER_MSG
  end

  def evaluate(series, user_answers)
    # iterate for all user answers and counts its respective votes
    user_answers.each do |user_answer|
      count_votes(user_answer.series_id)
    end

    max_voted = max_voted_series

    series.each do |serie|
      @final_answer = serie.quote if max_voted.key?(serie.id.downcase.to_sym)
    end
    @final_answer
  end

  private

  def max_voted_series
    # using _ to signalize the key is not going to be used
    @vote_counter.select { |_, v| v == @vote_counter.values.max }
  end

  # this method increment the votes correspondit to the series
  # the time is used to verify which series was last voted
  # using that approach, all mandatory cases are satisfied
  # moreover the app will use a coherent algorithm
  def count_votes(series_id)
    @vote_counter[series_id.to_sym] = [@vote_counter[series_id.to_sym].first + 1, Time.new]
  end
end
