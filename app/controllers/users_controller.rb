class UsersController < ApplicationController
    :id
    def show
        @user = User.find(params[:id])
    end

end