class SampleDatesController < ApplicationController
  before_action :set_sample_date, only: [:show, :edit, :update, :destroy]

  # GET /sample_dates
  # GET /sample_dates.json
  def index
    @sample_dates = SampleDate.all
  end

  # GET /sample_dates/1
  # GET /sample_dates/1.json
  def show
  end

  # GET /sample_dates/new
  def new
    @sample_date = SampleDate.new
  end

  # GET /sample_dates/1/edit
  def edit
  end

  # POST /sample_dates
  # POST /sample_dates.json
  def create
    @sample_date = SampleDate.new(sample_date_params)

    respond_to do |format|
      if @sample_date.save
        format.html { redirect_to @sample_date, notice: 'Sample date was successfully created.' }
        format.json { render :show, status: :created, location: @sample_date }
      else
        format.html { render :new }
        format.json { render json: @sample_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample_dates/1
  # PATCH/PUT /sample_dates/1.json
  def update
    respond_to do |format|
      if @sample_date.update(sample_date_params)
        format.html { redirect_to @sample_date, notice: 'Sample date was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample_date }
      else
        format.html { render :edit }
        format.json { render json: @sample_date.errors, status: :unprocessable_entity }
      end
    end
  end

  #DELETE /sample_dates/1
  #DELETE /sample_dates/1.json
  def destroy
    @sample_date.destroy
    respond_to do |format|
      format.html { redirect_to sample_dates_url, notice: 'Sample date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample_date
      @sample_date = SampleDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample_date_params
      params.require(:sample_date).permit(:sample_date)
    end
end

def import
   Users.import(params[:file])
  end
