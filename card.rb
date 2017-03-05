# class Card 
#   def initialize
#   end
# end

class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

first_card = Card.new("What is the capital of Illinois?", "Springfield")
p first_card.question


