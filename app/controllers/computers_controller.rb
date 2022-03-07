class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @computers = policy_scope(Computer)
    if params[:query].present?
      sql_query = "processador ILIKE :query OR placa_de_video ILIKE :query"
      @computers = Computer.where(sql_query, query: "%#{params[:query]}%")
    else
      @computer = Computer.all
    end
  end

  def show
    @computer = Computer.find(params[:id])
    authorize @computer
  end

  def new
    @computer = Computer.new
    authorize @computer
  end

  def create
    @computer = Computer.new(computer_params)
    @computer.user = current_user
    authorize @computer
    if @computer.save
      redirect_to computer_path(@computer)
    else
      render "new"
    end
  end

  def edit
    @computer = Computer.find(params[:id])
    authorize @computer
  end

  def update
    @computer = Computer.find(params[:id])
    authorize @computer
    if current_user == @computer.user
      @computer.update(computer_params)
      redirect_to computer_path(@computer)
    end
  end

  def destroy
    @computer = Computer.find(params[:id])
    authorize @computer
    @computer.destroy
    redirect_to computers_path
  end

  private

  def computer_params
    params.require(:computer).permit(:processador, :placa_de_video, :ram, :price_day, :photo)
  end
end
