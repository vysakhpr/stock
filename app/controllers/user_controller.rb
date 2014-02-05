class UserController < ApplicationController
  require 'will_paginate/array'
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
    @offices = Office.all
    
  end
end