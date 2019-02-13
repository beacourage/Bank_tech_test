class Account

INITIAL_BALANCE = 0

attr_accessor :balance

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
  end

end
