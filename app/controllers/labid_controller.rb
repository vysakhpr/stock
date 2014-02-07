class LabidController < ApplicationController
  def new
  	@labid=Labid.new
  end

  def create
  	@labid=Labid.create(params[:labid])
    if @labid.save
    	flash[:success]="Added Lab Successfully"
    	redirect_to root_url
    else
    	flash[:success]="Oops Something went wrong.."
    	redirect_to "labid/new"
    end
    	

  end

  def delete
  end
end
