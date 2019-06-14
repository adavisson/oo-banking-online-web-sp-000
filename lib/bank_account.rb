class BankAccount

  attr_reader :balance, :name

  def initialize(name)
    @name = name
    @balance = 1000
    @sttus = "open"
  end

end
