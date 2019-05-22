def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..11)
end

def display_card_total(number)
 card_total = number
 puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 method = gets.chomp
end

def end_game(number)
 if number > 21
 puts "Sorry, you hit #{number}. Thanks for playing!"
end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
   card_total += deal_card 
  elsif user_input == 's'
   card_total
else
  invalid_command
end
card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21 do
    hand = hit?(hand)
    display_card_total (hand)
  end
  end_game(hand)
end
    
