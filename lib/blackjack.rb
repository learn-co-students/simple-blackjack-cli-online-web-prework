# Print welcome message to screen
def welcome
  puts "Welcome to the Blackjack Table"
end

# Generate a random card between 1-11
def deal_card
  rand(1..11)
end

# Accept a number argument and output phrase with total
def display_card_total(number)
  puts "Your cards add up to #{number}"
end

# Output instructions for hitting or staying
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

# Return the value of a `gets.chomp` method
def get_user_input
  return gets.chomp
end

# Prints apology, card total, and thank you message
def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

# Call on #deal_card twice and return the sum via #display_card_total
def initial_round
  first = deal_card
  second = deal_card
  sum = first + second
  display_card_total(sum)
  return sum
end

# Add to current total if hit requested. Do nothing if stay is requested. Prompt for invalid command if neither hit nore stay is input.
def hit?(current_total)
 prompt_user
 player_input = get_user_input
 if player_input == 'h'
   current_total = current_total + deal_card
 elsif player_input != 's'
   invalid_command
   prompt_user
 end
 return current_total
end

# Ouput invalid command phrase
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# Run methods above until player's total exceeds 21
def runner
  welcome
  current_total = initial_round
  
  until current_total > 21
    current_total = hit?(current_total)
    display_card_total(current_total)
  end

  end_game(current_total)
end
    
