ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file}

Rspec.configure do |config|
  config.after(:each) do

    User.all() do |user|
      user.destroy()
    end
    
end
