class InfomercialsController < ApplicationController
  def index
    @infomercials = Infomercial.all
  end

  def show
    # binding.pry
    @infomercial = Infomercial.find(params["id"])
  end

  def create
    @infomercial = Infomercial.new
    @infomerical.save
  end
end
