class Customer < ApplicationRecord

  def self.get_accounts
    begin
      response = RestClient.get("http://localhost:3004/api/v1/accounts", nil)
      JSON.parse(response)
    rescue RestClient::Exception, StandardError => e
      {status: "ERROR", message: e.message}
    end
  end
end
