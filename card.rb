class Card
   
   attr_accessor :suit, :face, :value
   
   def initialize(suit, value, face)
      self.suit = suit
      self.face = face
      self.value = value.to_i
   end
   
   def >(card)
      self.value > card.value 
   end
   
   def ==(card)
      self.value == card.value 
   end
    
end