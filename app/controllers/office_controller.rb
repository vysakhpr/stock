class OfficeController < ApplicationController
  def new
  	
  	@office=Office.new
  end

  def create
  	@office=Office.create(params[:office])
  	if @office.save
  		flash[:notice]="Saved"
  		redirect_to root_url
    else
    	flash[:error]="Error"
    	redirect_to office_new_path
    end

  end

  def delete
  end
end
