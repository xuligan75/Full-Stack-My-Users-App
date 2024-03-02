
require 'sinatra'
require_relative 'my_user_model.rb'

set :bind, '0.0.0.0'
set :port, 8080
enable :sessions


post '/users' do
  user = User.new
  user_info = [params['firstname'], params['lastname'], params['age'], params['password'], params['email']]
  user_id = user.create(user_info)
  "Successfully created a user with userId = #{user_id}"
end


get '/users' do
  user = User.new
  @users = user.all
  erb :index
end


post '/sign_in' do
  user = User.new
  user_id = user.match(params['email'], params['password'])
  if user_id
    session[:user_id] = user_id.first['rowid']
    "User successfully logged in with id #{user_id.first['rowid']}"
  else
    "Invalid email or password"
  end
end


put '/users' do
  user = User.new
  user_id = session[:user_id]
  if user_id
    user.update(user_id, 'password', params['password'])
    "Successfully updated user"
  else
    "Not authorized user"
  end
end

delete '/sign_out' do
  user = User.new
  user_id = session[:user_id]
  if user_id
    session.delete(:user_id)
    "User successfully logged out"
  else
    "Not authorized"
  end
end

 
delete '/users' do
  user = User.new
  user_id = session[:user_id]
  if user_id
    user.destroy(user_id)
    session.delete(:user_id)
    "User successfully logged out and deleted"
  else
    "Not authorized"
  end
end
