module DisablesHelper
  def postdisable_check
    if Disable.first.postdisable == "yes"
      redirect_to disables_path
    else
    end
  end

  def conversationdisable_check
    if Disable.first.conversationdisable == "yes"
      redirect_to disables_path
    else
    end
  end

  def sitedisable_check
    if Disable.first.homedisable == "yes"
      if user_signed_in?
        if current_user.role == "admin"
        else
          redirect_to lionnav_path
        end
      else
        redirect_to lionnav_path
      end
    end
  end

  def userdisable_check
    if Disable.first.userdisable == "yes"
      redirect_to disables_path
    else
    end
  end

  def errordisable_check
    if Disable.first.error == "yes"
      redirect_to disables_path
    else
    end
  end

  def aboutdisable_check
    if Disable.first.lsabout == "yes"
      redirect_to disables_path
    else
    end
  end

  def lionsocialdisable_check
    if Disable.first.lionsocial == "yes"
      redirect_to moviemakers_path
    else
    end
  end

  def movie_check
    if Disable.first.movie == "yes"
      redirect_to disables_path
    else
    end
  end

  def scene_check
    if Disable.first.scene == "yes"
      redirect_to disables_path
    else
    end
  end

  def credit_check
    if Disable.first.credit == "yes"
      redirect_to disables_path
    else
    end
  end

  def expense_check
    if Disable.first.expense == "yes"
      redirect_to disables_path
    else
    end
  end

  def forums_check
    if Disable.first.forums == "yes"
      redirect_to disables_path
    else
    end
  end

  def payment_check
    if Disable.first.payment == "yes"
      redirect_to disables_path
    else
    end
  end

  def picturescene_check
    if Disable.first.picturescene == "yes"
      redirect_to disables_path
    else
    end
  end
  
  def lionfianace_check
    if Disable.first.lionfianace == "yes"
      redirect_to lionfinance_path
    else
    end
  end

  def moviemaker_check
    if Disable.first.moviemaker == "yes"
      redirect_to moviemaker_path
    else
    end
  end

  def tutorial_check
    if Disable.first.tutorial == "yes"
      redirect_to tutorial_path
    else
    end
  end

  def myaccont_check
    if Disable.first.myaccont == "yes"
      redirect_to myaccont_path
    else
    end
  end
end
