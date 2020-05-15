# require_relative "./config/environment"
# require_relative "./app/models/user"

require_relative "./application_controller"

class UsersController < ApplicationController
    get '/users' do
        erb :'/users/index'
    end

    get '/users/new' do 
        @books = Book.all
        erb :'/users/new'
    end

    post '/users' do 
        @user = 
        if params[:user][:book_ids] != nil

        end
        binding.pry
    end

    get '/login' do 

    end

    get '/sign_up' do 
        
    end
end