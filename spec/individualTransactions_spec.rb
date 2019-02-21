require 'individualTransactions'

  describe IndividualTransactions do

  INITIAL_BALANCE = IndividualTransactions::INITIAL_BALANCE
  INITIAL_CREDIT = IndividualTransactions::INITIAL_CREDIT
  INITIAL_DEBIT = IndividualTransactions::INITIAL_DEBIT

    describe "#totalbalance" do
      it "responds to total_balance" do
        transaction = IndividualTransactions.new
        expect(transaction).to respond_to(:total_balance)
      end

      it "There is an initial balance of 0" do
        transaction = IndividualTransactions.new
        expect(transaction.total_balance).to eq(INITIAL_BALANCE)
      end

    end

    describe "#credit" do
      it "responds to credit" do
        transaction = IndividualTransactions.new
        expect(transaction).to respond_to(:credit)
      end

      it "There is initial credit of 0" do
        transaction = IndividualTransactions.new
        expect(transaction.credit).to eq(INITIAL_CREDIT)
      end
    end

    describe "#debit" do
      it "responds to debit" do
        transaction = IndividualTransactions.new
        expect(transaction).to respond_to(:debit)
      end

      it "There is initial debit of 0" do
        transaction = IndividualTransactions.new
        expect(transaction.debit).to eq(INITIAL_DEBIT)
      end
    end

    describe "#date" do
      it "responds to date" do
        transaction = IndividualTransactions.new
        expect(transaction).to respond_to(:date)
      end

      it "The date of transaction is the current date" do
        transaction = IndividualTransactions.new
        date = 2
        expect(transaction.date).to eq('date')
      end
    end
end
