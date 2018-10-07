def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = Random.new
  card.rand(1...11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  cards = deal_card() + deal_card()
  display_card_total(cards)
  while counter < 2 do  
    deal_card()
    deal_card()
    display_card_total()
    counter += 1
  end
  display_card_total()
end

def hit?(number)
  prompt_user()
  move = get_user_input()
  
  if move == 's'
    deal_card()
  elsif move == 'h'
    counter = 0
    while counter < 2 do
    deal_card()
    counter += 1
  end
  else 
    invalid_command()
    prompt_user()
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
