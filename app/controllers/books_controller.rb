require_relative "./application_controller"

class BooksController < ApplicationController
    get '/books' do 
        binding.pry
        @books = Book.all
        erb :'/books/index'
    end

    get '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        erb :'/books/show'
    end

    get '/books/new' do 
        if session[:email].empty? 
            redirect "/login"
        

        end
    end
end