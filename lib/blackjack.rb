def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return (rand(1..11))
end

def display_card_total(total)
  # code #display_card_total here
 puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
  
end

def initial_round
  # code #initial_round here
  card1 = deal_card 
  sum = card1 + deal_card
  display_card_total(sum)
  return sum
 end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 'h'
   current_total += deal_card
  elsif input == 's'
   current_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a validd command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round 
  until hit?(sum) >21
    hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
runner