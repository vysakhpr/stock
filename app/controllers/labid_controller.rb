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
    	flash[:error]= @labid.errors.full_messages.to_sentence
    	redirect_to :back
    end

  end

  def delete
  end
end
