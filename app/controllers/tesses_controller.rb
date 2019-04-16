class TessesController < ApplicationController
  before_action :set_tess, only: [:show, :edit, :update, :destroy]

  # GET /tesses
  # GET /tesses.json
  def index
    @tesses = Tess.all
  end

  # GET /tesses/1
  # GET /tesses/1.json
  def show
  end

  # GET /tesses/new
  def new
    @tess = Tess.new
  end

  # GET /tesses/1/edit
  def edit
  end

  # POST /tesses
  # POST /tesses.json
  def create
    @tess = Tess.new(tess_params)

    respond_to do |format|
      if @tess.save
        format.html { redirect_to @tess, notice: 'Tess was successfully created.' }
        format.json { render :show, status: :created, location: @tess }
      else
        format.html { render :new }
        format.json { render json: @tess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesses/1
  # PATCH/PUT /tesses/1.json
  def update
    respond_to do |format|
      if @tess.update(tess_params)
        format.html { redirect_to @tess, notice: 'Tess was successfully updated.' }
        format.json { render :show, status: :ok, location: @tess }
      else
        format.html { render :edit }
        format.json { render json: @tess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesses/1
  # DELETE /tesses/1.json
  def destroy
    @tess.destroy
    respond_to do |format|
      format.html { redirect_to tesses_url, notice: 'Tess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tess
      @tess = Tess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tess_params
      params.require(:tess).permit(:id, :value)
    end
end
