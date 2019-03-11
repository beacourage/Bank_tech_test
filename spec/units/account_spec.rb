require 'account'

describe Account do

INITIAL_AMOUNT = Account::INITIAL_AMOUNT

  let(:subject){ Account.new}
  let(:individualTransactions) { double('individual transaction mock', :debit => 10)}


    describe "#balance" do
      it "responds to balance" do
        expect(subject).to respond_to(:amount_change)
      end

      it "There is an initial balance of zero" do
        account = Account.new
        expect(account.amount_change).to eq(INITIAL_AMOUNT)
      end
    end

    describe "#transactions" do
      it "responds to transactions" do
        account = Account.new
        expect(account.printstatement).to respond_to(:transactions)
      end

      it "Initialize empty transactions array" do
        account = Account.new
        expect(account.printstatement.transactions).to eq([])
      end

      it "Returns an array with transactions" do
        allow(subject.printstatement).to receive(:transactions).and_return([individualTransactions])
        expect(subject.printstatement.transactions).to eq([individualTransactions])
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

      it "Responds to print statement method" do
        account = Account.new
        expect(account.printstatement).to respond_to(:print_statement)
      end

      end
  end
