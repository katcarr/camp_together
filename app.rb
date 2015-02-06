require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get '/' do
  erb(:index)
end


post '/create_account' do
  login = params.fetch("login_name")
  if login.include?('@') && login.include?('.')
    @user = User.create(email: login)
  else
    @user = User.create(name: login)
    erb(:account)
end


patch '/login' do
  login = params.fetch("login_name")
  if login.include?('@') && login.include?('.')
    @user = User.where(email: login)
  else
    @user = User.where(name: login)
  erb(:account)
end
