def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  cards = []
  2.times do
    cards << deal_card()
  end
  total = cards.sum
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user()
  ans = get_user_input()
  if ans == "h"
    total += deal_card()
    return total
  elsif ans == "s"
    return total
  else
    invalid_command()
    prompt_user()
  end
    
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
