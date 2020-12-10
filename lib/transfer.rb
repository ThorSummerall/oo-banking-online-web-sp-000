class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
<<<<<<< HEAD
    @sender.valid? && @receiver.valid? && @sender.balance >= self.amount
  end

  def execute_transaction
    if self.valid? && self.status != "complete"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else !self.valid?
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end



  def reverse_transfer
    if self.status == "complete"
      sender.balance += amount
      receiver.balance -= amount
      self.status = "reversed"
    end
=======
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    # check if it's valid, check that the balance is greater than the amount, check that status is pending
    if @sender.valid? && @sender.balance > @amount && self.status == "pending"
      #subtract amount from sender balance
      @sender.balance -= @amount
      #add amount to receiver balance
      @receiver.balance += @amount
      @status = "complete"
    else
      self.status = "rejected"
      puts "Your transaction was reject, please check your balance."
    end
  end

  def reverse_transfer

>>>>>>> 932ee4af157c07ebb260610ca36dc68b27c0dc7e
  end
end
