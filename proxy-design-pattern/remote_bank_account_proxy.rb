class RemoteBankAccountProxy
  def initialize
    @base_uri = "localhost:3000/bank_account"
  end

  def balance
    rest_service.get("/balance")
  end

  def deposit(amount)
    rest_service.post("/deposit", {amount: amount})
  end

  def withdraw(amount)
    rest_service.delete("/withdraw", {amount: amount})
  end

  private

  def rest_service
    @rest_client ||= RestClient.new(base_uri, :json)
  end

  attr_reader :rest_service
end