class IndividualTransactions

INITIAL_BALANCE = 0
INITIAL_CREDIT = 0
INITIAL_DEBIT = 0

  attr_accessor :total_balance, :credit, :debit

  def initialize (total_balance = INITIAL_BALANCE, credit = INITIAL_CREDIT, debit = INITIAL_DEBIT)
    @total_balance = total_balance
    @credit = credit
    @debit = debit
  end
end
