describe 'Feature test printstatement' do

      it 'Print_statement method prints the bank statement' do

  account = Account.new
        mock = double('Date mock', date: 'date')
        allow(account).to receive(:date).and_return(mock)
        # date = Time.now.strftime("%d/%m/%Y")
        account.withdraw(9)
        account.deposit(7)
        output = "date       || credit || debit || balance\n#{mock} || 0      || 9     || -9\n#{mock} || 7      || 0     || -2\n"
        expect { account.printstatement.print_statement }.to output(output).to_stdout
      end

end
