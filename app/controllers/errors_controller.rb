class ErrorsController < ApplicationController
  before_action :set_error, only: [:destroy]
  before_action :check_admin, only: [:index, :destroy]
  before_action :authenticate_user!
  before_action :sitedisable_check
  before_action :errordisable_check
  before_action :moviemaker_check

  def new
    @error = Error.new
  end

  def create
    @error = Error.new(error_params)
    flash[:notice] = "Error was successfully reported. We will review it and fix this error #{current_user.username}."
    AllMailer.error_email.deliver_now
    redirect_to root_path
  end

 def index
   @page_title = "Errors Movie Makers"
   @errors = Error.all
   @errors = Error.by_newest
 end

 def destroy
   @error.destroy
   flash[:notice] = "Error was deleted"
   redirect_to errors_path
  end

 private
  def set_error
    @error = Error.find(params[:id])
  end

  def error_params
    params.require(:error).permit(:error, :description)
  end

end
