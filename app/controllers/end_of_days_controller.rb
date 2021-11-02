class EndOfDaysController < ApplicationController
  before_action :set_end_of_day, only: [:show, :update, :destroy]

  # GET /end_of_days
  def index
    @end_of_days = EndOfDay.all

    render json: @end_of_days
  end

  # GET /end_of_days/1
  def show
    render json: @end_of_day
  end

  # POST /end_of_days
  def create
    @end_of_day = EndOfDay.new(end_of_day_params)

    if @end_of_day.save
      render json: @end_of_day, status: :created, location: @end_of_day
    else
      render json: @end_of_day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /end_of_days/1
  def update
    if @end_of_day.update(end_of_day_params)
      render json: @end_of_day
    else
      render json: @end_of_day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /end_of_days/1
  def destroy
    @end_of_day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end_of_day
      @end_of_day = EndOfDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def end_of_day_params
      params.require(:end_of_day).permit(:date, :open, :high, :low, :close, :volume, :dividend, :split, :ticker_id)
    end
end
