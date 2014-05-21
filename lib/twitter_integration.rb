class TwitterIntegration

  def self.client
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "e3KpbwDyUQpSenaA1AU5w"
      config.consumer_secret     = "ni9NmKXQJYTa9sesVbLuuE5DvcEtqdz3ZEAEKYr8tuQ"
      config.access_token        = "8328712-3Q0SwFfwueQvxiCPZjXrMsQY5o0MQOfqxxAYfYhtw"
      config.access_token_secret = "2CsNxLtcX93RSmkb0MUbJ3rNF5EtPyeldHm2BARfSw"
    end
    client
  end

  def search name
    client = self.class.client
    client.user_search(name)
  end

  def break
    a = PdfIntegration.new
  end

  def raise_the_access
    client = Twitter::REST::Client.new
  end

end
