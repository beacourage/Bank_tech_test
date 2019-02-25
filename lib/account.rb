require_relative 'individualTransactions'
require_relative 'printStatement'
class Account

INITIAL_AMOUNT = 0

attr_accessor :amount_change,:date, :printstatement

  def initialize(initial_amount = INITIAL_AMOUNT)
    @amount_change = initial_amount
    @date = Time.now.strftime("%d/%m/%Y")
    @printstatement = PrintStatement.new
  end

  def deposit(amount)
    @amount_change += amount
    @printstatement.transactions << IndividualTransactions.new(date, amount, 0, amount_change )
  end

# (date, credit, debit, totalbalance )

  def withdraw(amount)
    @amount_change -= amount
    @printstatement.transactions << IndividualTransactions.new(date, 0, amount, amount_change)
  end



end


# can call printstatement methods on the account class
