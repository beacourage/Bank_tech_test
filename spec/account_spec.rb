require 'account'


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

      it "Initialize emply transactions array" do
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

      end

    end


  end
