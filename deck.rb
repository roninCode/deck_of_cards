# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def make_multiple_choice
    right_answer = answer
    wrong_answer 

end

class Deck
  attr_reader :cards

  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |key, value|
      cards << Card.new(key, value)
    end
  end

  def remaining_cards
    cards.length
  end

  def draw_card
    cards.shuffle!
    returned_card = cards[0]
    cards.delete(cards[0])
    returned_card
  end
end

# trivia_data = {
#   "What is the capital of Illinois?" => "Springfield",
#   "Is Africa a country or a continent?" => "Continent",
#   "Tug of war was once an Olympic event. True or false?" => "True"
# }

multiple_choice = {
  "What is the capital of Illinois?" => [{"Springfield" => true, "Boston" => false, "New York" => false}],
  "What is the capital of New York?" => [{"Springfield" => false, "Albany" => true, "Rochester" => false}],
  "What is the capital of Florida?" => [{"Miami" => false, "Talahasse" => true, "Orlando" => false }]
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class
# p deck.trivia_data
# p deck.remaining_cards
# deck.draw_card
# deck.draw_card

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end