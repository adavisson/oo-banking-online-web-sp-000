class Transfer
  # your code here
  
  attr_reader :amount, :receiver, :sender, :status
  
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
    self.sender.balance -=
  end
  
end
