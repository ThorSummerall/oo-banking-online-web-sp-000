class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
<<<<<<< HEAD
    @status = "closed"
=======
    if @status == "open"
      @status = "closed"
      puts "Your account has been closed."
    else
      puts "Your account is already closed!"
    end
>>>>>>> 932ee4af157c07ebb260610ca36dc68b27c0dc7e
  end
end
