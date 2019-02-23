class PrintStatement

attr_accessor :transactions, :head

  def initialize
    @transactions = []
    @head = head
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
