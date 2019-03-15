class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    week = Week.find(params[:week_id])
    @days = week.days

    respond_to do |format|
      format.html
      format.json { render json: @days }
    end
  end

  # GET /days/1
  # GET /days/1.json
  def show
    week = Week.find(params[:week_id])
    @day = week.days.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @days }
    end
  end

  # GET /days/new
  def new
    week = Week.find(params[:week_id])
    @day = week.days.build

    respond_to do |format|
      format.html
      format.json { render json: @days }
    end
  end

  # GET /days/1/edit
  def edit
    week = Week.find(params[:week_id])
    @day = week.days.find(params[:id])
  end

  # POST /days
  # POST /days.json
  def create
    week = Week.find(params[:week_id])
    @day = week.days.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to ([@day.week, @day]), notice: 'Day was successfully created.' }
        format.json { render :show, status: :created, location: [@day.week, @day] }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    week = Week.find(params[:week_id])
    @day = week.days.find(params[:id])

    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to ([@day.week, @day]), notice: 'Day was successfully updated.' }
        format.json { render :show, status: :ok, location: ([@day.week, @day]) }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    week = Week.find(params[:week_id])
    @day = week.days.find(params[:id])

    @day.destroy
    respond_to do |format|
      format.html { redirect_to week_days_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
	    params.require(:day).permit(:day_of_week)
    end
end
