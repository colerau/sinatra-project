# require_relative "./config/environment"
# require_relative "./app/models/user"

require_relative "./application_controller"

class UsersController < ApplicationController
    get '/users' do 
        binding.pry
        erb :'/users/index'
    end
end