class LabController < ApplicationController
  def new
  	@stock=Office.find(params[:id])
  	@lab=Lab.new
  end
end
