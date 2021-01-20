class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users.as_json
    end

    def show
        @users = User.find(params[:id])
        render json: @users.as_json
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy  
            head :ok
        else
            render json: user.errors
        end
    end

    def create
        @user = User.new(user_params)
    
        respond_to do |format|
          if @user.save
            format.html { redirect_to @user, notice: 'user was successfully created.' }
            format.json { render :show, status: :created, location: @user }
          else
            format.html { render :new }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

    def update
        user = User.find(params[:id])
        if user.update(user_params) == true
            flash[:success] = "User successfully updated"
            render json: user
        else
            render json: user.errors, status: :bad_request
        end
    end
    
    private
        def user_params
            params.require(:user).permit(:name, :email)
        end
end
