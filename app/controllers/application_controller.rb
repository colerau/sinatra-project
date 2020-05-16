class ApplicationController < Sinatra::Base
    set :views, proc { File.join(root, '../views/') }
    register Sinatra::Twitter::Bootstrap::Assets
    
    configure do 
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "5hf93ndms0cbdh4"
    end

    get '/' do
      erb :"/application/index"
    end

    helpers do 

        def logged_in? 
            if (session[:email] && session[:password])
                return true 
            else 
                return false
            end
        end

        def login(email, password)
            binding.pry
            if user = User.find_by(email: email)
                if user.authenticate(password)
                    session[:user_id] = user.id
                    session[:email] = user.email
                    session[:password] = user.password
                    redirect '/users'
                end 
            else 
                redirect "/login"
            end
        end

        def current_user

        end
    end
  end