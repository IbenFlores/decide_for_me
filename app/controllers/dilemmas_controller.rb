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
    option_new
  end

  def create
    @dilemma = Dilemma.new(dilemma_params)
    @dilemma.user_id = current_user.id
    authorize @dilemma
    option_create

    if @dilemma.save
      redirect_to dilemma_path(@dilemma)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   @dilemma.update(dilemma_params)
  #   if @dilemma.save
  #     redirect_to dilemma_path(dilemma)
  #   else
  #     render :edit_dilemma
  #   end
  # end

  # def destroy
  #   @dilemma.destroy

  #   redirect_to dilemmas_path
  # end

  def option_new
    @option = Option.new
  end

  def option_create
    @dilemma = Dilemma.find(params[:dilemma_id])
    @option = Option.new(option_params)
    @option.dilemma = @dilemma
  end

  private

  def find_dilemma
    @dilemma = Dilemma.find(params[:id])
    authorize @dilemma
  end

  def dilemma_params
    params.require(:dilemma).permit(:question, :category)
  end

  def option_params
    params.require(:option).permit(:description, :upvotes)
  end
end
