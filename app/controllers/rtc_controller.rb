class RtcController < ApplicationController
  def retrieve
    @card = Card.find(params[:number])
  end

  def update
    @card = Card.find(params[:number])
    if @card.update_attributes(card_params)
      render 'retrieve'
    end
  end

  private
  def card_params
    params.require(:card).permit(:status, :points)
  end
end
