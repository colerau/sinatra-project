class SessionsController < ApplicationController 

    get '/login' do 
        erb :"sessions/login"
    end

    post '/login' do 
        binding.pry
        @user = User.find_by(email: params[:email], password: params[:password])
        if @user
            session[:id] = @user.id
        else 
            binding.pry
            redirect "/login"
        end 
    end
end