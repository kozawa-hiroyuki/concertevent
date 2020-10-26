class ConcerteventsController < ApplicationController
  before_action :set_concertevent, only: [:show, :edit, :update, :destroy]

  # GET /concertevents
  # GET /concertevents.json
  def index
    @concertevents = Concertevent.all
  end

  # GET /concertevents/1
  # GET /concertevents/1.json
  def show
  end

  # GET /concertevents/new
  def new
    @concertevent = Concertevent.new
  end

  # GET /concertevents/1/edit
  def edit
  end

  # POST /concertevents
  # POST /concertevents.json
  def create
    @concertevent = Concertevent.new(concertevent_params)

    respond_to do |format|
      if @concertevent.save
        format.html { redirect_to @concertevent, notice: 'Concertevent was successfully created.' }
        format.json { render :show, status: :created, location: @concertevent }
      else
        format.html { render :new }
        format.json { render json: @concertevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concertevents/1
  # PATCH/PUT /concertevents/1.json
  def update
    respond_to do |format|
      if @concertevent.update(concertevent_params)
        format.html { redirect_to @concertevent, notice: 'Concertevent was successfully updated.' }
        format.json { render :show, status: :ok, location: @concertevent }
      else
        format.html { render :edit }
        format.json { render json: @concertevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concertevents/1
  # DELETE /concertevents/1.json
  def destroy
    @concertevent.destroy
    respond_to do |format|
      format.html { redirect_to concertevents_url, notice: 'Concertevent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concertevent
      @concertevent = Concertevent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concertevent_params
      params.require(:concertevent).permit(:name, :member, :datetime, :description)
    end
end
