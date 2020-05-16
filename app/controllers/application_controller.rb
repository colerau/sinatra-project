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
            # double bang gets boolean value of session[:email]
            !!session[:email]
        end

        def current_user
            
        end
    end
  end