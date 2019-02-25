describe 'Feature test printstatement' do

      it 'Print_statement method prints the bank statement' do
        date = Time.now.strftime("%d/%m/%Y")
        account = Account.new
        account.withdraw(9)
        account.deposit(7)
        output = "date       || credit || debit || balance\n#{date} || 0      || 9     || -9\n#{date} || 7      || 0     || -2\n"
        expect { account.printstatement.print_statement }.to output(output).to_stdout
      end

end
