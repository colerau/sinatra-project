# require_relative "./config/environment"
# require_relative "./app/models/user"

require_relative "./application_controller"

class UsersController < ApplicationController
    get '/users' do
        @user = User.find_by(email: session[:email], password: session[:password], id: session[:user_id])
        if @user 
            "You are logged in as #{session[:email]}."
            erb :'/users/index'
        else 
            redirect "/login"
        end
    end
end 