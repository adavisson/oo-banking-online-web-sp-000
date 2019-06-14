require 'pry'

class Transfer
  # your code here
  
  attr_accessor :status
  attr_reader :amount, :receiver, :sender
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid? ? true : false
  end
  
  def execute_transaction
    binding.pry
    if !self.valid? #|| self.status != "pending"
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    elsif self.valid? && self.status == "pending"
      self.sender.withdraw(self.amount)
      self.receiver.deposit(self.amount)
      self.status = "complete"
    end
  end
  
end
