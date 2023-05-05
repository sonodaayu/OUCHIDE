class User1sController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
end
