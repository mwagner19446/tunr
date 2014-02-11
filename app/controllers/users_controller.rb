class UsersController < ApplicationController
  def new
  end 
  def create
   @user= User.create({
      first_name: params[:first_name],
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth],
      sex: params[:sex],
      email: params[:email],
      facebook_link: params[:facebook_link],
      password: params[:password]
    })
    render(:show)
  end 
  def show
    @user = User.find_by(id: params[:id])
    render(:show)
  end 

  def edit
    @user = User.find_by(id: params[:id])
  end 
  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      {
      first_name: params[:first_name],
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth],
      sex: params[:sex],
      email: params[:email],
      facebook_link: params[:facebook_link],
      password: params[:password]
      })
    render(:show)
  end 


end