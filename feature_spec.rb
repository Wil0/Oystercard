require "./lib/oystercard.rb"

oyster = Oystercard.new
fail "new oyster doesn't have £0 on it" unless oyster.balance == 0

# In order to keep using public transport
# As a customer
# I want to add money to my card
oyster.top_up(6)
fail "oyster did not top up" unless oyster.balance == @balance
