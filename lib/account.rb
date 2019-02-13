require_relative 'individualTransactions'

class Account

INITIAL_BALANCE = 0

attr_accessor :balance, :transactions, :date

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    @balance += amount
    @transactions << IndividualTransactions.new(date, amount, 0, balance )
  end


  def withdraw(amount)
    @balance -= amount
    @transactions << IndividualTransactions.new(date, 0, amount, balance)
  end




end
