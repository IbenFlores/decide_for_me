class RepliesController < ApplicationController
  def new
    @reply = Reply.new
    @dilemma = Dilemma.find(params[:dilemma_id])
    authorize @reply
  end

  def create
    @reply = Reply.new(reply_params)
    @reply.dilemma_id = params[:dilemma_id]
    @reply.user_id = current_user.id
    authorize @reply
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
