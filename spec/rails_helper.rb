require 'rubygems'

RSpec.configure do |config|  
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].sort.each {|f| require f}
  
  config.before(:all) do
    DeferredGarbageCollection.start unless ENV["DEFER_GC"] == "false"
  end
  
  config.after(:all) do
    DeferredGarbageCollection.reconsider unless ENV["DEFER_GC"] == "false"    
  end
  
  def mock_everything
    def image_tag(*args)
      options = *args.extract_options!
      "<img src=\"#{args[0]}\" />"
    end
    
    def asset_path(path)
      return path
    end
  end
end
