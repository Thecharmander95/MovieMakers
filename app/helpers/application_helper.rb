module ApplicationHelper
  include DisablesHelper
  
  def check_admin
    if current_user.role == "admin"
    else
      redirect_to root_path, notice: "You do not have access to this"
    end
  end

  def check_user
    @user = User.friendly.find(params[:id])
    if current_user.role == "admin"
    else
      if current_user == @user
      else
        redirect_to root_path, notice: "Your not that user"
      end
    end
  end
end
