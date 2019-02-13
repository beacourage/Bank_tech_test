class IndividualTransactions

INITIAL_BALANCE = 0

  attr_accessor :total_balance

  def initialize (total_balance = INITIAL_BALANCE)
    @total_balance = total_balance
  end
end
