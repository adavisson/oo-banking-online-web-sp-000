class Transfer
  # your code here
  
  attr_reader :sender
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
  end
  
end
