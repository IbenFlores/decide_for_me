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

  private

  def option_params
    params.require(:option).permit(:description)
  end
end
