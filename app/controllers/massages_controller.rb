class MassagesController < ApplicationController
  before_action :set_massage, only: [:show, :edit, :update, :destroy]

  # GET /massages
  # GET /massages.json
  def index
    @massage = Massage.new
    @massages = Massage.all
  end

  # POST /massages
  # POST /massages.json
  def create
    @massage = Massage.new(massage_params)

    if @massage.save
      redirect_to massages_url, notice: "Message was successfully created."
    else
      redirect_to massages_url, alert: "Message was unsuccessfully created."
    end
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def massage_params
      params.require(:massage).permit(:title, :body, :signature)
    end
end
