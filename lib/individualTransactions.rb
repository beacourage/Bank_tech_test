class IndividualTransactions

INITIAL_BALANCE = 0
INITIAL_CREDIT = 0

  attr_accessor :total_balance, :credit

  def initialize (total_balance = INITIAL_BALANCE, credit = INITIAL_CREDIT)
    @total_balance = total_balance
    @credit = credit
  end
end
