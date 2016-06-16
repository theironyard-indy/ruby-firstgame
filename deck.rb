class Deck
   
   attr_accessor :cards
   
   def initialize 
    self.cards = []
    suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    values = (2..14).to_a
    faces = (2..10).to_a + ["Jack", "Queen", "King", "Ace"]
    suits.each do |suit|
       faces.each_with_index do |face, index|
          self.cards << Card.new(suit, values[index], face)
       end
    end
    self.cards = self.cards.shuffle
   end
   
   def draw
      self.cards.shift 
   end
    
end