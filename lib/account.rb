require_relative 'individualTransactions'

class Account

INITIAL_AMOUNT = 0

attr_accessor :amount_change, :transactions, :date, :head

  def initialize(initial_amount = INITIAL_AMOUNT)
    @amount_change = initial_amount
    @transactions = []
    @date = Time.now.strftime("%d/%m/%Y")
    @head = head

  end

  def deposit(amount)
    @amount_change += amount
    @transactions << IndividualTransactions.new(date, amount, 0, amount_change )
  end

# (date, credit, debit, totalbalance )

  def withdraw(amount)
    @amount_change -= amount
    @transactions << IndividualTransactions.new(date, 0, amount, amount_change)
  end

  def head
    @head = "date       || credit || debit || balance\n"
  end

  def print_statement
    body_of_statement = ""
    @transactions.each do |transaction|
      body_of_statement << "#{transaction.date} || #{transaction.credit}      || #{transaction.debit}     || #{transaction.total_balance}\n"
    end
   puts head + body_of_statement
 end



end
