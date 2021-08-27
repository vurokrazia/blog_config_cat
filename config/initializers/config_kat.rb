require "configcat"

class ConfigKat
  def self.config_cat_client
    @config_cat_client ||= ConfigCat.create_client_with_auto_poll(
      ENV['ConfigKatToken'],
      poll_interval_seconds: 5,
    )
  end
end
