require 'individualTransactions'

class Account

INITIAL_BALANCE = 0

attr_accessor :balance, :transactions, :date

  def initialize(balance = INITIAL_BALANCE)
    @balance = balance
    @transactions = []
    @date = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(credit)
    debit = 0
    @balance += credit
    @transactions << IndividualTransactions.new(date, credit, debit, balance)
  end


  # def withdraw(debit)
  #   credit =




end
