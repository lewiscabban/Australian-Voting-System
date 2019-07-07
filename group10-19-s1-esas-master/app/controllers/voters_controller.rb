class VotersController < ApplicationController
  #before_action :set_voter, only: [:show, :edit, :update, :destroy]

  # GET /voters
  # GET /voters.json
  def vote
    @id = params[:voter_id]
    @voter = Voter.find(@id)
    @candidates = Candidate.all
    @partys = Party.all
  end
  
  def index
    @voters = Voter.all
  end
  
  def landing
    @voters = Voter.all
  end
  
  def show
    id = params[:id]
    @voter = Voter.find(id)
  end

  def results
    @votes = Vote.all
    @candidates = Candidate.all
    positions = [0]
    @candidates.each do |candidate|
      positions.push(0)
    end
    @voter = @votes[0]

    @votes.each do |vote|
      positions[vote.preferences[0].to_i] = positions[vote.preferences[0].to_i] + 1
    end

    @results = []
    @score = []
    @len = positions.length
    x = 1
    1.upto(@len) do
      i = 1
      j = x
      max = 0
      positions.each do |pos|
        if pos > max
          max = pos
          j = i
        end
        i = i + 1
      end
      k = j - 1
      x = x + 1
      positions.delete_at(k)
      @results.push(j)
      @score.push(max)
    end

  end

  def party_submit
    @id = params[:id]
    @voter = Voter.find(@id)
    @votes = params[:pvote]
    @res = nil
    count = 0
    @votes.each do |k,v|
      if v.to_i > 0 then
        count += 1
      end
    end
    if count >= 6 then
      prefs = Array.new(count) {|i| @votes.key((i+1).to_s)}
      valid = true
      prefs.each do |val|
        if val == nil  or val == 0 then
          valid = false
        end
      end
      if valid then
        candidates = Array.new()
        prefs.each do |party|
          Candidate.where(:party_id => party.to_i).order(:rank).each { |c| candidates.push(c.id) }
        end
        @res = @voter.vote(candidates)
      end
    end
    
  end

  def candidate_submit
    @id = params[:id]
    @voter = Voter.find(@id)
    @votes = params[:cvote]
    @res = nil
    count = 0
    if @votes != nil then
      @votes.each do |k,v|
        if v.to_i > 0 then
          count += 1
        end
      end
    end
      
    if count > 11 then
      prefs = Array.new(count) {|i| @votes.key((i+1).to_s)}
      valid = true
      prefs.each do |val|
        if val == nil or val == 0 then
          valid = false
        end
      end
      if valid then
        @res = @voter.vote(prefs)
      end
    end
  end


  # GET /voters/1
  # GET /voters/1.json
  def show
    id = params[:id]
    @voter = Voter.find(id)
  end

  # GET /voters/new
  def new
    @voter = Voter.new
  end

  # GET /voters/1/edit
  def edit
  end

  # POST /voters
  # POST /voters.json
  def create
    @voter = Voter.new(voter_params)

    respond_to do |format|
      if @voter.save
        format.html { redirect_to @voter, notice: 'Voter was successfully created.' }
        format.json { render :show, status: :created, location: @voter }
      else
        format.html { render :new }
        format.json { render json: @voter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voters/1
  # PATCH/PUT /voters/1.json
  def update
    respond_to do |format|
      if @voter.update(voter_params)
        format.html { redirect_to @voter, notice: 'Voter was successfully updated.' }
        format.json { render :show, status: :ok, location: @voter }
      else
        format.html { render :edit }
        format.json { render json: @voter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voters/1
  # DELETE /voters/1.json
  def destroy
    id = params[:id]
    @voter = Voter.find(id)
    @voter.destroy
    respond_to do |format|
      format.html { redirect_to voters_url, notice: 'Voter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voter
      @voter = Voter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voter_params
      params.require(:voter).permit(:name, :date_of_birth, :state, :voted)
    end
end
