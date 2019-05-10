def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = 1 + rand(10)
  return num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}" 
  return card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp 
  return input 
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  return (num1+num2)
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == 's'
    return current_total
  elsif input == 'h'
    num = deal_card
    return (current_total+num) 
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command. 
  prompt_user"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  num = initial_round
  total = hit?(num)
  display_card_total(total)
  if total<=21
    num1 = hit?(num)
    total += num1
  else end_game(total)
  end
end
    
