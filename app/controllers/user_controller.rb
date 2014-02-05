class UserController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_filter :authenticate_user!, :except=>[:home]
  def home
    flash.keep
    if user_signed_in?
      if current_user.position=="HD"
        redirect_to "/hod"
      elsif current_user.position=="HM"
        redirect_to "/head"
      elsif current_user.position=="LC"
        redirect_to "/lab"
      else
        redirect_to "/office"
      end
        
    end
  end

  def hod
    if current_user.position!= "HD"
      flash[:error]="Access Denied"
      redirect_to root_url
    end
  end

  def hm
    if current_user.position!= "HM"
      flash[:error]="Access Denied"
      redirect_to root_url
    end
  end

  def lc
    if current_user.position!= "LC"
      flash[:error]="Access Denied"
      redirect_to root_url
    end
  end

  def of
    if current_user.position!= "OF"
      flash[:error]="Access Denied"
      redirect_to root_url
    end
    @offices = Office.order(sort_column + ' ' + sort_direction)
    
  end


  private
    def sort_column
      Office.column_names.include?(params[:sort]) ? params[:sort] : "date"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end