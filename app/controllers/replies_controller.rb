class RepliesController < ApplicationController
  def new
    @dilemma = Dilemma.find(params[:dilemma_id])
    @reply = Reply.new
    authorize @reply
  end

  def create
    @dilemma = Dilemma.find(params[:dilemma_id])
    @reply = Reply.new(reply_params)
    @reply.dilemma_id = params[:dilemma_id]
    @reply.user_id = current_user.id
    @reply.owner_id = current_user.id
    authorize @reply
    if @reply.save
      DilemmaChannel.broadcast_to(
      @dilemma,
      render_to_string(partial: "display-replies", locals: { reply: @reply })
      )
      redirect_to dilemma_path(@dilemma)
    else
      render "dilemmas/show"
    end
  end

  def destroy
    @reply.destroy

    redirect_to dilemma_path(@dilemma)
  end

  def mark
    @reply = Reply.find(params[:id])
    @reply.users.push(current_user)
    authorize @reply

    @reply.save!
    redirect_to dilemma_path(@reply.dilemma)
  end

  private

  def reply_params
    params.require(:reply).permit(:answer, :reply_votes)
  end
end
