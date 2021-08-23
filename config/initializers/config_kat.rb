require "configcat"

class ConfigKat
  def self.config_cat_client
    @config_cat_client ||= ConfigCat.create_client_with_auto_poll(
      "6t3YCCuQ_UKD6OqSfMfGMQ/NEtWRxZ0NUu_pb_Zctmvbg",
      poll_interval_seconds: 5,
    )
  end
end
