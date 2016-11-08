class SimpleUsersController < ApplicationController
  def index
    @simple_users = SimpleUser.all
  end

  def show
    @simple_user = SimpleUser.find(params[:id])
  end

  def new
    @simple_user = SimpleUser.new
  end

  def edit
    @simple_user = SimpleUser.find(params[:id])
  end

  def create
    @simple_user = SimpleUser.new(simple_user_params)
    if @simple_user.save
      redirect_to @simple_user
    else
      render 'new'
    end
  end

  def update
    @simple_user = SimpleUser.find(params[:id])

    if @simple_user.update(simple_user_params)
      redirect_to @simple_user
    else
      render 'edit'
    end
  end

  def destroy
    # remove simple_users from their inbox, but not from database
  end

  private
  def simple_user_params
    params.require(:message).permit(:firstname, :lastname, :email)
  end
end
