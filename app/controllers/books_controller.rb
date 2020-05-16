class BooksController < ApplicationController
    get '/books' do 
        @books = Book.all
        erb :'/books/index'
    end

    get '/books/new' do 
        if !logged_in?
            redirect "/login"
        else 
            @books = Book.all
            erb :'/books/new'
        end
    end
    
    post '/books' do 
        binding.pry
        if !logged_in?
            redirect "/login"
        end 
    end

    get '/books/:id' do 
        if !logged_in?
            redirect "/login"
        else 
            @book = Book.find_by_id(params[:id])
            erb :'/books/show'
        end 
    end
end