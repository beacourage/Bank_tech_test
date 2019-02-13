class Account

INITIAL_BALANCE = 0

attr_accessor :balance, :transactions

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
  end

end
