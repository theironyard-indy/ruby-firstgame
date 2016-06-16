puts "Let's play a game!"
puts "I'll pick a number, you guess it."
puts "Ready?"
gets

the_number = rand(100)

the_guess = 0

play_again = "y"

until play_again != "y"
    puts "Guess ..."
    the_guess = gets.to_i
    if the_number > the_guess
        puts "You're low"
    elsif the_number < the_guess
        puts "You're high"
    else
        puts "You win!"
        puts "Would you like to play again?"
        play_again = gets.chomp
        if play_again == "y"
           the_number = rand(100) 
        end
    end
end