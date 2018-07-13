class RtcController < ApplicationController
  # layout 'rtc'
  
  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to card_path(rtc_number)
    end
  end

  def qr_code
    # puts params[:number]
    # render params[:number], format: :js
    # rtc_number = params[:number]
    # unless rtc_number.nil?
    #   redirect_to card_path(rtc_number)
    # end
  end

  def card_details
    @card = Card.find(params[:number])
  end

  def update
    @card = Card.find(params[:number])
    if @card.update_attributes(card_params)
      flash[:success] = 'Changes were successfully saved.'
      redirect_to @card
    end
  end

  private
  def card_params
    params.require(:card).permit(:summary, :card_type, :status, :points, :owner, :blocked, :iteration)
  end
end
