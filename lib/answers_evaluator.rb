require 'date'

class AnswersEvaluator
  def initialize
    @vote_counter = { a: [0, Time.new], b: [0, Time.new], c: [0, Time.new], d: [0, Time.new], e: [0, Time.new] }
  end

  def evaluate(series, user_answers)
    user_answers.each do |user_answer|
      count_answer(user_answer.series_id)
    end

    max_voted = @vote_counter.select {|k,v| v == @vote_counter.values.max }

    series.each do |serie|
      if max_voted.has_key?(serie.id.downcase.to_sym)
        puts "\n#{serie.quote}"
      end
    end

  end

  def count_answer(series_id)
    case series_id
    when 'a'
      @vote_counter[:a] = [@vote_counter[:a].first + 1, Time.new]
    when 'b'
      @vote_counter[:b] = [@vote_counter[:b].first + 1, Time.new]
    when 'c'
      @vote_counter[:c] = [@vote_counter[:c].first + 1, Time.new]
    when 'd'
      @vote_counter[:d] = [@vote_counter[:d].first + 1, Time.new]
    when 'e'
      @vote_counter[:e] = [@vote_counter[:e].first + 1, Time.new]
    end
  end
end
