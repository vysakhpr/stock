class LabController < ApplicationController
  def new
  	@stock=Office.find(params[:id])
  	@lab=Lab.new
  end

  def create
  	@lab=current_user.labs.build(params[:lab])
  	unless @lab.quantity.nil?
  		if @lab.office.quantity < @lab.quantity
  			flash[:error]="Quantity over full size"
  			redirect_to :back
  		elsif @lab.save
  			flash[:info]="Successively Assigned"
  			redirect_to root_url
  		end	
  	else
  		flash[:error]="Fill All Fields"
  		redirect_to :back
   	end
  end
end
