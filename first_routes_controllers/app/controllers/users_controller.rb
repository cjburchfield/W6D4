class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(strong_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors.full_messages, status: 426
        end
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def update
        @user = User.find(params[:id])
        if @user.update(strong_params)
            redirect_to user_url(@user.id)
        else
            render json: @user.errors.full_messages, status: 403
        end


    end

    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            render json: "USER DESTROYED!!!"
        else
            render json: @user.errors.full_messages, status: 417
        end
    end

    private

    def strong_params
        params.require(:user).permit(:name, :email)
    end
end