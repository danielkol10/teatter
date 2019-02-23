class TeatsController < ApplicationController
  before_action :set_teat, only: [:show, :edit, :update, :destroy]

  # GET /teats
  # GET /teats.json
  def index
    @teats = Teat.all
  end

  # GET /teats/1
  # GET /teats/1.json
  def show
  end

  # GET /teats/new
  def new
    @teat = Teat.new
  end

  # GET /teats/1/edit
  def edit
  end

  # POST /teats
  # POST /teats.json
  def create
    @teat = Teat.new(teat_params)

    respond_to do |format|
      if @teat.save
        format.html { redirect_to @teat, notice: 'Teat was successfully created.' }
        format.json { render :show, status: :created, location: @teat }
      else
        format.html { render :new }
        format.json { render json: @teat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teats/1
  # PATCH/PUT /teats/1.json
  def update
    respond_to do |format|
      if @teat.update(teat_params)
        format.html { redirect_to @teat, notice: 'Teat was successfully updated.' }
        format.json { render :show, status: :ok, location: @teat }
      else
        format.html { render :edit }
        format.json { render json: @teat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teats/1
  # DELETE /teats/1.json
  def destroy
    @teat.destroy
    respond_to do |format|
      format.html { redirect_to teats_url, notice: 'Teat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teat
      @teat = Teat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teat_params
      params.require(:teat).permit(:teat)
    end
end
