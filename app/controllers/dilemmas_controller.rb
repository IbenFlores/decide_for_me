class DilemmasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_dilemma, only: [:show, :edit, :update, :destroy]

  def index
    @dilemmas = policy_scope(Dilemma)
    if params[:query].present?
      sql_query = "question ILIKE :query OR tag ILIKE :query"
      @dilemmas = Dilemma.where(sql_query, query: "%#{params[:query]}%")
    else
      @dilemmas = Dilemma.all
    end
  end

  def show
    @dilemmas = Dilemma.all
    @reply = Reply.new
  end

  def new
    @dilemma = Dilemma.new
    @dilemma.options.build
    authorize @dilemma
  end

  def create
    @dilemma          = Dilemma.new(dilemma_params)
    @dilemma.category = params["dilemma"]["category"].to_i
    @dilemma.user_id  = current_user.id

    authorize @dilemma

    if @dilemma.save!
      redirect_to dilemma_path(@dilemma)
    else
      render :new
    end
  end

  private

  def find_dilemma
    @dilemma = Dilemma.find(params[:id])
    authorize @dilemma
  end

  def dilemma_params
    params.require(:dilemma).permit(:question, :context, :expired_at, :photo, {options_attributes: [:description]})
  end
end
