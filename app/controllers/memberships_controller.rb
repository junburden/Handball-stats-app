class MembershipsController < ApplicationController
  before_action :set_membership, only: [:show, :edit, :update, :destroy]

  # GET /memberships/new
  def new
    @players = Player.all
    @teams = Team.all
    if params.has_key?(:player_id)
      @membership = Membership.new(player_id: params[:player_id])
    else
      @membership = Membership.new
    end
  end

  # GET /memberships/1/edit
  def edit
    @players = [@membership.player]
    @teams = [@membership.team]

  end

  # POST /memberships
  # POST /memberships.json
  def create
    @membership = Membership.new(membership_params)

    respond_to do |format|
      if @membership.save
        format.html { redirect_to @membership.player, notice: 'Successfully added to team.' }
      else
        format.html { render :new }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memberships/1
  # PATCH/PUT /memberships/1.json
  def update
    respond_to do |format|
      if @membership.update(membership_params)
        format.html { redirect_to @membership.player, notice: 'Membership was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memberships/1
  # DELETE /memberships/1.json
  def destroy
    player = @membership.player
    @membership.destroy
    
    respond_to do |format|
      format.html { redirect_to player, notice: 'Successfully removed from team.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membership
      @membership = Membership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membership_params
      params.require(:membership).permit(:team_id, :player_id, :number, :position, :active)
    end
end
