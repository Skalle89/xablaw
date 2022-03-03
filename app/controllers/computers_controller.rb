class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def new
    @computer = Computer.new
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.user = current_user
    if @computer.save
      redirect_to computer_path(@computer)
    else
      render "new"
    end
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    @computer.update(computer_params)
  end

  def destroy
    @computer = Computer.find(params[:id])
    @computer.destroy
    redirect_to computers
  end

  private

  def computer_params
    params.require(:computer).permit(:processador, :placa_de_video, :ram, :price_day)
  end
end
