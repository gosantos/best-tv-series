class Question
  attr_accessor :id, :title, :answers

  def initialize(id, title)
    @id = id
    @title = title
    @answers = []
  end

  def add_answer(answer)
    @answers.push answer
  end
end
