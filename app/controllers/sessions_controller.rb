class SessionsController < ApplicationController 

    get '/login' do 
        erb :"sessions/login"
    end

    post '/login' do 
        binding.pry
        login(params[:email], params[:password])
    end

    get '/logout' do 
        @user = User.find_by(email: session[:email])
        if @user
            session.clear
            redirect "/login"
        else
            erb :"/sessions/not_logged_in"
        end 
    end
end