class Achievements::BadgesController < ApplicationController
  before_action :set_achievements_badge, only: [:show, :edit, :update, :destroy]

  # GET /achievements/badges
  # GET /achievements/badges.json
  def index
    @achievements_badges = Achievements::Badge.all
  end

  # GET /achievements/badges/1
  # GET /achievements/badges/1.json
  def show
  end

  # GET /achievements/badges/new
  def new
    @achievements_badge = Achievements::Badge.new
  end

  # GET /achievements/badges/1/edit
  def edit
  end

  # POST /achievements/badges
  # POST /achievements/badges.json
  def create
    @achievements_badge = Achievements::Badge.new(achievements_badge_params)

    respond_to do |format|
      if @achievements_badge.save
        format.html { redirect_to @achievements_badge, notice: 'Badge was successfully created.' }
        format.json { render :show, status: :created, location: @achievements_badge }
      else
        format.html { render :new }
        format.json { render json: @achievements_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achievements/badges/1
  # PATCH/PUT /achievements/badges/1.json
  def update
    respond_to do |format|
      if @achievements_badge.update(achievements_badge_params)
        format.html { redirect_to @achievements_badge, notice: 'Badge was successfully updated.' }
        format.json { render :show, status: :ok, location: @achievements_badge }
      else
        format.html { render :edit }
        format.json { render json: @achievements_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievements/badges/1
  # DELETE /achievements/badges/1.json
  def destroy
    @achievements_badge.destroy
    respond_to do |format|
      format.html { redirect_to achievements_badges_url, notice: 'Badge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achievements_badge
      @achievements_badge = Achievements::Badge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achievements_badge_params
      params.require(:achievements_badge).permit(:achievements/unlock_id, :player_id, :multiplier, :status, :meta)
    end
end
