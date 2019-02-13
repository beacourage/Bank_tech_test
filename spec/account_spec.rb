require 'account'
require 'individualTransactions'


  describe Account do

INITIAL_BALANCE = Account::INITIAL_BALANCE
    describe "#balance" do
      it "responds to balance" do
        account = Account.new
        expect(account).to respond_to(:balance)
      end

      it "There is an initial balance of zero" do
        account = Account.new
        expect(account.balance).to eq(INITIAL_BALANCE)
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
        expect(account.balance).to eq 12
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
        expect(account.balance).to eq(-12)
      end
    end
  end
