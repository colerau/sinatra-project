# require_relative "./config/environment"
# require_relative "./app/models/user"

require_relative "./application_controller"

class UsersController < ApplicationController
    # /users either redirects to login or goes to a user's home page
    get '/users' do
        @user = User.find_by(email: session[:email], password: session[:password], id: session[:user_id])
        if @user 
            "You are logged in as #{session[:email]}."
            # to the user's home page
            erb :'/users/index'
        else 
            redirect "/login"
        end
    end
end 