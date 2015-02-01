class Achievements::UnlocksController < ApplicationController
  before_action :set_achievements_unlock, only: [:show, :edit, :update, :destroy]

  # GET /achievements/unlocks
  # GET /achievements/unlocks.json
  def index
    @achievements_unlocks = Achievements::Unlock.all
  end

  # GET /achievements/unlocks/1
  # GET /achievements/unlocks/1.json
  def show
  end

  # GET /achievements/unlocks/new
  def new
    @achievements_unlock = Achievements::Unlock.new
  end

  # GET /achievements/unlocks/1/edit
  def edit
  end

  # POST /achievements/unlocks
  # POST /achievements/unlocks.json
  def create
    @achievements_unlock = Achievements::Unlock.new(achievements_unlock_params)

    respond_to do |format|
      if @achievements_unlock.save
        format.html { redirect_to @achievements_unlock, notice: 'Unlock was successfully created.' }
        format.json { render :show, status: :created, location: @achievements_unlock }
      else
        format.html { render :new }
        format.json { render json: @achievements_unlock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achievements/unlocks/1
  # PATCH/PUT /achievements/unlocks/1.json
  def update
    respond_to do |format|
      if @achievements_unlock.update(achievements_unlock_params)
        format.html { redirect_to @achievements_unlock, notice: 'Unlock was successfully updated.' }
        format.json { render :show, status: :ok, location: @achievements_unlock }
      else
        format.html { render :edit }
        format.json { render json: @achievements_unlock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievements/unlocks/1
  # DELETE /achievements/unlocks/1.json
  def destroy
    @achievements_unlock.destroy
    respond_to do |format|
      format.html { redirect_to achievements_unlocks_url, notice: 'Unlock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achievements_unlock
      @achievements_unlock = Achievements::Unlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achievements_unlock_params
      params.require(:achievements_unlock).permit(:achievement_id, :player_id, :progression, :status, :meta)
    end
end
