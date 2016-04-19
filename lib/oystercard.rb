class Oystercard
<<<<<<< HEAD
=======
  
  MAXIMUM_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up money
    raise 'Top up limit is £90' if money + balance > MAXIMUM_BALANCE
    @balance += money
  end
>>>>>>> d2ea0d8e2515dc0cf750092fb6a70e7362695140
end
