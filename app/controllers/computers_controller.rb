class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def new
  end

  def create
  end


  def edit
  end

  def update
  end

  def destroy
  end
end
