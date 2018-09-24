class ProtectionBankAccountProxy
  attr_reader :user_credentials

  def initialize(user_credentials)
    @subject = BankAccount.new
    @user_credentials = user_credentials
  end

  def balance
    check_permissions(:read)
    subject.balance
  end

  def deposit(amount)
    check_permissions(:write)
    subject.deposit(amount)
  end

  def withdraw(amount)
    check_permissions(:write)
    subject.withdraw(amount)
  end

  private

  def check_permissions(permission_type)
    unless CredentialValidator.validate(@user_credentials, permission_type)
      raise "Unauthorized #{permission_type} action from: #{@user_credentials}. Account action denied."
    end
  end
end