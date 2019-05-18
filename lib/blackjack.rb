def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand 1..11
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   return gets.chomp
end

def end_game(card_total)
 puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 sum = 0
 sum = deal_card + deal_card
 display_card_total(sum)
 return sum
end

def hit?(number)
  prompt_user
  ans = get_user_input
  until ans == 'h' || ans == 's'
    invalid_command
    prompt_user
    ans = get_user_input
  end
  if ans == 'h'
    number += deal_card
  else
    return number
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  
  while card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
end
    
