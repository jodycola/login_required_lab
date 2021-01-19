class SessionsController < ApplicationController

    def new 
    end

    def create 
        if session[:name].blank?    
        redirect_to '/sessions/new'
        else 
            session[:name] = params[:name]
        end
    end

    def destroy
        session[:name].present?
        session.delete :name
    end 

end
