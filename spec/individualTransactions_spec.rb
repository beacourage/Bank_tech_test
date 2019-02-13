require 'individualTransactions'

  describe IndividualTransactions do
  INITIAL_BALANCE = IndividualTransactions::INITIAL_BALANCE

    describe "#initialbalance" do
      it "There is an initial balance of 0" do
        transaction = IndividualTransactions.new
        expect(transaction.total_balance).to eq(INITIAL_BALANCE)
      end

      it "responds to total_balance" do
        transaction = IndividualTransactions.new
        expect(transaction).to respond_to(:total_balance)
      end
    end






  end
