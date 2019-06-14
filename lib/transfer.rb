class Transfer
  # your code here
  
  attr_reader :receiver, :sender, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
  
end
