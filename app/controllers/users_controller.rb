class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users

  end
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def new

  end
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def create
    @user = User.create(name: params[:name], email: params[:email], age: params[:age])
    redirect_to '/users'
  end
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def show
    render json: User.find(params[:id])

  end
  # +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def edit
    @user = User.find(params[:id])
  end
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def total
    render text: "Total number of the users : " + (User.count).to_s 
  end
  # +++++++++++++++++++++++++++++++++++++++++++++++++++++++
  def update
    # @user = User.find
    User.find(params[:id]).update(name: params[:name], email: params[:email], age: params[:age])
    redirect_to '/users'
  end
  # +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
end
