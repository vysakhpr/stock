class LabController < ApplicationController
  def new
  	@stock=Office.find(params[:id])
  	@lab=Lab.new
  end

  def create
  	@lab=current_user.labs.build(params[:lab])
  	unless @lab.quantity.nil?
  		if (@lab.office.quantity-@lab.office.quantity_assigned) < @lab.quantity
  			flash[:error]="Quantity over full size"
  			redirect_to :back
  		elsif @lab.save
  			flash[:info]="Successively Assigned"
        diff=@lab.office.quantity_assigned+@lab.quantity
        @lab.office.update_attribute(:quantity_assigned,diff)
  			redirect_to root_url
  		end	
  	else
  		flash[:error] = @lab.errors.full_messages.to_sentence
  		redirect_to :back
   	end
  end
end
