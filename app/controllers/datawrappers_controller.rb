class DatawrappersController < ApplicationController
  before_action :set_datawrapper, only: [:show, :update, :destroy]

  # GET /datawrappers
  def index
    @datawrappers = Datawrapper.all

    render json: @datawrappers
  end

  # GET /datawrappers/1
  def show
    render json: @datawrapper
  end

  # POST /datawrappers
  def create
    @datawrapper = Datawrapper.new(datawrapper_params)

    if @datawrapper.save
      render json: @datawrapper, status: :created, location: @datawrapper
    else
      render json: @datawrapper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /datawrappers/1
  def update
    if @datawrapper.update(datawrapper_params)
      render json: @datawrapper
    else
      render json: @datawrapper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /datawrappers/1
  def destroy
    @datawrapper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datawrapper
      @datawrapper = Datawrapper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datawrapper_params
      params.require(:datawrapper).permit(:dataCode, :value)
    end
end
