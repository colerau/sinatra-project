require_relative "./application_controller"

class UsersController < ApplicationController
    get '/books' do 
        @books = Book.all
        erb :'/books/index'
    end
end