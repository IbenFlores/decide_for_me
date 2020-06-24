class OptionsController < ApplicationController
  def new
    @dilemma = Dilemma.find(params[:dilemma_id])
    @option = Option.new
  end

  def create
    @dilemma = Dilemma.find(params[:dilemma_id])
    @option = Option.new(option_params)
    @option.dilemma = @dilemma

    @option.save
  end

  def upvotes
    @option = Option.find(params[:id])
    @option.upvotes += 1
    authorize @option

    @option.save!
  end

  private

  def option_params
    params.require(:option).permit(:description)
  end
end
