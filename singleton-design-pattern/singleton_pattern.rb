class Configuration
  @@instance = Configuration.new

  def self.instance
    @@instance
  end

  def set_config(config)
    @config.puts(config)
  end

  private_class_method :new
end

# Both calls to Configuration.instance will
# return the same instance of the Configuration
# class. It will return the singleton object.
config = Configuration.instance
config_2 = Configuration.instance
