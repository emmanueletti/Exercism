module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when 0...1000
      0.005
    when 1000...5000
      0.01621
    when 5000
      0.02475
    end
  end

  def self.annual_balance_update(balance)
    raise "Please implement the SavingsAccount.annual_balance_update method"
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    raise "Please implement the SavingsAccount.years_before_desired_balance method"
  end
end
