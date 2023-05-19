class OmniauthCallbacksController < ApplicationController
    def facebook
        puts "Omniauth callback hash: #{auth}"
        
        redirect_to root_path, notice: "successfully connected to facebook "
    end
    def auth
        request.env['omniauth.auth']
    end
end