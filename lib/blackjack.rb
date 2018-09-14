def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  returned_val = rand(1..11)
  return returned_val
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card
  myTotal = deal1 + deal2
  
  display_card_total(myTotal)
  return myTotal
end

def hit?(card_total)
    prompt_user
    useInp = get_user_input
    if useInp == "h"
        dealN = deal_card
        card_total = card_total + dealN
        return card_total
    elsif useInp == "s"
        return card_total
    else
        invalid_command
        prompt_user
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
    ctot = initial_round
    until ctot > 21
      ctot = hit?(ctot)
      display_card_total(ctot)
    end
    end_game(ctot)
end
    
