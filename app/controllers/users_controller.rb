class UsersController < ApplicationController
def show
	@user = user.find(params[:id])
end

def new
 @user = User.new
  end

def create

@user = User.new(user_params)

if @user.save
	UserMailer.signup_confirmation(@user).deliver
    # flash[:notice] = "Welcome to the site!"
   redirect_to "@user,notice: "signed up successfully"
else
  flash[:alert] = "There was a problem creating your account. Please try again."
  redirect_to :back

end

end

private

def user_params

params.require(:user).permit(:email, :password, :password_confirmation)

 end
end
