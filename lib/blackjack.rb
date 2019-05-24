def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  hit_stay = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum= deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(hit_or_stay)
  prompt_user
  choice = get_user_input
  if choice == "h"
    hit_or_stay += deal_card
  elsif choice == "s"
    return hit_or_stay
    end 
end

def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  hand = hit?(initial_round)
  until hand > 21
    display_card_total(hand)
    hand += hit?(deal_card)
  end
  
  display_card_total(hand)
  end_game(hand)
end
    
