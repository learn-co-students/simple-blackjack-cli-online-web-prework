def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  number = deal_card + deal_card
  display_card_total(number)
  return number
end

def hit?(number)
  prompt_user
  action = get_user_input
    if action == 's' then return number
    elsif action == 'h' then deal_card + number
    else  invalid_command
    end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  variable = initial_round
  until
  variable > 21
  variable = hit?(variable)
  end
  display_card_total(variable)
  puts "Sorry, you hit #{variable}. Thanks for playing!"
end
    
