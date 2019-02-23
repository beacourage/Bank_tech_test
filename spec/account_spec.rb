require 'account'
require 'printStatement'
# require 'individualTransactions'



# describe Bottle do
#   it 'is a test' do
#     mock = double('a liquid mock', type: 'water')
#     bottle = Bottle.new(mock)
#
#     expect(bottle.what_is_in_me?).to eq 'water'
#   end
# end
#
#



  describe Account do


let(:subject){ Account.new}
INITIAL_AMOUNT = Account::INITIAL_AMOUNT
    describe "#balance" do
      it "responds to balance" do
        account = Account.new
        expect(account).to respond_to(:amount_change)
      end

      it "There is an initial balance of zero" do
        account = Account.new
        expect(account.amount_change).to eq(INITIAL_AMOUNT)
      end
    end

    describe "#transactions" do
      it "responds to transactions" do
        account = Account.new
        expect(account).to respond_to(:transactions)
      end

      it "Initialize empty transactions array" do
        account = Account.new
        expect(account.transactions).to eq([])
      end
    end

    describe '#deposit' do
      it 'Account class responds to desposit method' do
        account = Account.new
        expect(account).to respond_to(:deposit).with(1).argument
      end

      it "Deposit method adds the amount to total balance" do
        account = Account.new
        amount = 12
        account.deposit(amount)
        expect(account.amount_change).to eq 12
        # expect{ account.deposit(amount) }.to change { account.balance }.by(12)
      end

    end

    describe "#withdraw" do
      it "Account class responds to withdraw method" do
        account = Account.new
        expect(account).to respond_to(:withdraw).with(1).argument
      end

      it "Withdraw method removes amount from the total balance" do
        account = Account.new
        amount = 12
        account.withdraw(amount)
        expect(account.amount_change).to eq(-12)
      end
    end

    describe '#statement' do
      it "Responds to the head method" do
        account = Account.new
        expect(account).to respond_to(:head)
      end

      it "Responds to print statement method" do
        account = Account.new
        expect(account.printstatement).to respond_to(:print_statement)
      end



      it 'Print statement prints the account statement' do
        account = Account.new
        account.withdraw(9)
        account.deposit(7)
        expect { account.printstatement.print_statement }.to output("date       || credit || debit || balance\n23/02/2019 || 0      || 9     || -9\n23/02/2019 || 7      || 0     || -2\n").to_stdout
      end


      # it "Printstatement outputs the body of the table" do
      #   account = Account.new

      end
    end
