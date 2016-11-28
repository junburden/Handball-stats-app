class ShotsController < ApplicationController
  before_action :set_shot, only: [:show, :edit, :update, :destroy]
  before_action :set_values, only: [:edit, :new]

  # GET /shots
  # GET /shots.json
  def index
    @shots = Shot.all
  end

  # GET /shots/1
  # GET /shots/1.json
  def show
  end

  # GET /shots/new
  def new
    @shot = Shot.new(goal: true, x_position: 0, y_position: 100, shooter_x_pos: 0, shooter_z_pos: 720)
  end

  # GET /shots/1/edit
  def edit
  end

  # POST /shots
  # POST /shots.json
  def create
    @shot = Shot.new(shot_params)

    respond_to do |format|
      if @shot.save
        format.html { redirect_to @shot.game, notice: 'Shot was successfully created.' }
        format.json { render :show, status: :created, location: @shot }
      else
        set_values
        format.html { render :new }
        format.json { render json: @shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shots/1
  # PATCH/PUT /shots/1.json
  def update
    respond_to do |format|
      if @shot.update(shot_params)
        format.html { redirect_to @shot.game, notice: 'Shot was successfully updated.' }
        format.json { render :show, status: :ok, location: @shot }
      else
        set_values
        format.html { render :edit }
        format.json { render json: @shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shots/1
  # DELETE /shots/1.json
  def destroy
    game = @shot.game
    @shot.destroy
    respond_to do |format|
      format.html { redirect_to game, notice: 'Shot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shot
      @shot = Shot.find(params[:id])
    end

    def set_values
      set_games
      set_teams
      set_shooters
      set_goalies
    end

    def set_games
      if params[:game_id]
        @games = Game.where(id: params[:game_id])
      elsif @shot && @shot.game_id
        @games = Game.where(id: @shot.game_id)
      else
        @games = Game.all
      end
    end

    def set_teams
      if params[:game_id] || (@shot && @shot.game_id)
        @teams = Team.find(@games.first.home.id, @games.first.away.id)
      else
        @teams = []
      end
    end

    def set_shooters
      if @shot && @shot.team_id
        @shooters = Membership.where(team_id: @shot.team_id).order("CASE WHEN position='Goalie' THEN 2 ELSE 1 END, position")
      else
        @shooters = []
      end
    end

    def set_goalies
      if @shot && @shot.team_id
        team_id = @games.first.home.id + @games.first.away.id - @shot.team_id
        @goalies = Membership.where(team_id: team_id).order("CASE WHEN position='Goalie' THEN 1 ELSE 2 END, position")
      else
        @goalies = []
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shot_params
      params.require(:shot).permit(:goal, :seven, :x_position, :y_position, :shooter_x_pos, :shooter_z_pos, :game_id, :team_id, :shooter_id, :goalie_id)
    end
end
