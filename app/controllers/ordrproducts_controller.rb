class OrdrproductsController < ApplicationController
  before_action :set_ordrproduct, only: [:show, :edit, :update, :destroy]

  # GET /ordrproducts
  # GET /ordrproducts.json
  def index
    @ordrproducts = Ordrproduct.all
  end

  # GET /ordrproducts/1
  # GET /ordrproducts/1.json
  def show
  end

  # GET /ordrproducts/new
  def new
    @ordrproduct = Ordrproduct.new
  end

  # GET /ordrproducts/1/edit
  def edit
  end

  # POST /ordrproducts
  # POST /ordrproducts.json
  def create
    @ordrproduct = Ordrproduct.new(ordrproduct_params)

    respond_to do |format|
      if @ordrproduct.save
        format.html { redirect_to @ordrproduct, notice: 'Ordrproduct was successfully created.' }
        format.json { render :show, status: :created, location: @ordrproduct }
      else
        format.html { render :new }
        format.json { render json: @ordrproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordrproducts/1
  # PATCH/PUT /ordrproducts/1.json
  def update
    respond_to do |format|
      if @ordrproduct.update(ordrproduct_params)
        format.html { redirect_to @ordrproduct, notice: 'Ordrproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordrproduct }
      else
        format.html { render :edit }
        format.json { render json: @ordrproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordrproducts/1
  # DELETE /ordrproducts/1.json
  def destroy
    @ordrproduct.destroy
    respond_to do |format|
      format.html { redirect_to ordrproducts_url, notice: 'Ordrproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordrproduct
      @ordrproduct = Ordrproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordrproduct_params
      params.require(:ordrproduct).permit(:quantity, :product_id, :ordr_id)
    end
end
