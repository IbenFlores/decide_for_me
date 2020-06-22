class DilemmasController < ApplicationController
  def index
    @dilemmas = Dilemma.all
  end

  def show
    @dilemma = Dilemma.find(params[:id])
  end

  def new
    @dilemma = Dilemma.new
  end

  def create
    @dilemma = Dilemma.new(dilemma_params)
    if @dilemma.save
      redirect_to dilemma_path(dilemma)
    else
      render :new_dilemma
  end

  def edit
    @dilemma = Dilemma.find(params[:id])
  end

  def update
    @dilemma = Dilemma.find(params[:id])
    if @dilemma.save
      redirect_to dilemma_path(dilemma)
    else
      render :edit_dilemma
  end

  def destroy
    @dilemma = Dilemma.find(params[:id])
    @dilemma.destroy

    redirect_to dilemma_index_path
  end

  private
  def dilemma_params
    params.require(:dilemma).permit(:question)
  end
end
