class SessionsController < ApplicationController 

    get '/login' do 
        erb :"sessions/login"
    end

    post '/login' do 
        @user = User.find_by(email: params[:email], password: params[:password], id: params[:user_id])
        if @user
            session[:user_id] = @user.id
            session[:email] = @user.email
            session[:password] = @user.password
            redirect '/users'
        else
            redirect "/login"
        end 
    end

    get '/logout' do 
        @user = User.find_by(email: params[:email], password: params[:password])
        if @user
            session.clear
            redirect "/login"
        else
            redirect "/login"
        end 
    end
end