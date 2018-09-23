require 'singleton'

class Configuration
  include Singleton

  def set_config(config)
    @config.puts(config)
  end
end

Configuration.instance.set_config('message 2')
