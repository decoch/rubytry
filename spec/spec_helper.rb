module SpecHelper
  def log(messages)
    puts(messages)
  end
end

RSpec.configure do |config|
  config.include SpecHelper
end
