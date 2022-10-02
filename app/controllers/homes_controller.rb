class HomesController < ApplicationController
  def index
    if user_signed_in?
    else
      redirect_to user_session_path
    end
  end

  def disabled
  end
end
