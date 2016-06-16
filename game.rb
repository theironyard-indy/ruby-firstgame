require_relative 'card'
require_relative 'deck'

deck = Deck.new

play_again = "y"

while play_again == "y"
    computer_card = deck.draw

    puts "The computer has drawn a #{computer_card.face} of #{computer_card.suit}"
    puts "Draw?"
    gets

    player_card = deck.draw

    puts "You have drawn a #{player_card.face} of #{player_card.suit}"

    if computer_card > player_card
        puts "Computer wins. DESTROY ALL HUMANS!!!"
    elsif player_card > computer_card
        puts "you win. i am the sads."
    else
        puts "We tied?"
    end
    puts "Draw again?"
    play_again = gets.chomp.downcase
end