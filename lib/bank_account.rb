class BankAccount

  attr_reader :balance, :name, :open

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

end
