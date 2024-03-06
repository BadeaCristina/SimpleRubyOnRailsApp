class MainController < ApplicationController

    def index
       flash.now[:notice] = "Welcome to the main page!"
       flash.now[:alert] = "Invalid login!"
    end


end