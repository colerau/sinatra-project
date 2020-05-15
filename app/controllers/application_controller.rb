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
  end