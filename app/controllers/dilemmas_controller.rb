class DilemmasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_dilemma, only: [:show, :edit, :update, :destroy]
  def index
    @dilemmas = policy_scope(Dilemma)
  end

  def show
  end

  def new
    @dilemma = Dilemma.new
    authorize @dilemma
  end

  def create
    @dilemma = Dilemma.new(dilemma_params)
    @dilemma.user_id = current_user.id
    authorize @dilemma
    if @dilemma.save
      redirect_to dilemma_path(@dilemma)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dilemma.update(dilemma_params)
    if @dilemma.save
      redirect_to dilemma_path(dilemma)
    else
      render :edit_dilemma
    end
  end

  def destroy
    @dilemma.destroy

    redirect_to dilemmas_path
  end

  private

  def find_dilemma
    @dilemma = Dilemma.find(params[:id])
    authorize @dilemma
  end

  def dilemma_params
    params.require(:dilemma).permit(:question, :category)
  end
end
