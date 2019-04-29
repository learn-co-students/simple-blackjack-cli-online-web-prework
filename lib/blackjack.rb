def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(peep)
  puts "Your cards add up to #{peep}"
  return peep
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  return answer
end

def end_game(ngh)
  puts "Sorry, you hit #{ngh}. Thanks for playing!"
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  thang = num1 + num2
  display_card_total(thang)
  return thang
end

def hit?(arg)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    return arg + deal_card
  else return arg
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
  total = initial_round
  until total > 21 do
    flip = hit?(total)
    display_card_total(flip)
    total = total = flip
end
end_game(total)
end

    
