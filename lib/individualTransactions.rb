class IndividualTransactions

INITIAL_BALANCE = 0
INITIAL_CREDIT = 0
INITIAL_DEBIT = 0

  attr_accessor :total_balance, :credit, :debit, :date

  def initialize (date = 'date', credit = INITIAL_CREDIT, debit = INITIAL_DEBIT, total_balance = INITIAL_BALANCE)
    @date = date
    @credit = credit
    @debit = debit
    @total_balance = total_balance
  end
end
