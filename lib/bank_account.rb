class BankAccount

  attr_reader :balance, :name, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(cash)
    @balance += cash
  end

end
