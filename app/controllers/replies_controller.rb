class RepliesController < ApplicationController
  def new
    @reply = Reply.new
    @dilemma = Dilemma.find(params[:dilemma_id])
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.dilemma_id = params[:dilemma_id]
    if @reply.save
      redirect_to dilemma_path(@dilemma)
    else
      render :new
    end
  end

  def destroy
    @reply.destroy

    redirect_to dilemma_path(@dilemma)
  end

  private

  def reply_params
    params.require(:reply).permit(:answer, :reply_votes)
  end
end
