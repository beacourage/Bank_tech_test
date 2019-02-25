require 'printStatement'


describe PrintStatement do

let(:subject){ PrintStatement.new}

  it "Responds to head" do
    expect(subject).to respond_to(:head)
  end

  it "Responds to printstatement method" do
    expect(subject).to respond_to(:print_statement)
  end

  it "Responds to transactions" do
    expect(subject).to respond_to(:transactions)
  end

  it "Initializes an empty transactions array" do
    expect(subject.transactions).to eq([])
  end

  it "New instance of printstatement is initialized with a header" do
    head = "date       || credit || debit || balance\n"
    expect(subject.head).to eq(head)
  end

  it "Print statement method outputs head and body" do
    output = "date       || credit || debit || balance\n"
    expect { subject.print_statement }.to output(output).to_stdout
  end

  it "Ensures a new instance of printstatement is created" do
    expect(subject).to be_an_instance_of(PrintStatement)
  end





end
