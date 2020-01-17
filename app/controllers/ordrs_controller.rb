class OrdrsController < ApplicationController
  before_action :set_ordr, only: [:show, :edit, :update, :destroy]

  # GET /ordrs
  # GET /ordrs.json
  def index
    @ordrs = Ordr.all
  end

  # GET /ordrs/1
  # GET /ordrs/1.json
  def show
  end

  # GET /ordrs/new
  def new
    @ordr = Ordr.new
    @ordr.ordrproducts.new
  end

  # GET /ordrs/1/edit
  def edit
  end

  # POST /ordrs
  # POST /ordrs.json
  def create
    @ordr = Ordr.new(ordr_params)

    respond_to do |format|
      if @ordr.save
        format.html { redirect_to @ordr, notice: 'Ordr was successfully created.' }
        format.json { render :show, status: :created, location: @ordr }
      else
        format.html { render :new }
        format.json { render json: @ordr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordrs/1
  # PATCH/PUT /ordrs/1.json
  def update
    respond_to do |format|
      if @ordr.update(ordr_params)
        format.html { redirect_to @ordr, notice: 'Ordr was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordr }
      else
        format.html { render :edit }
        format.json { render json: @ordr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordrs/1
  # DELETE /ordrs/1.json
  def destroy
    @ordr.destroy
    respond_to do |format|
      format.html { redirect_to ordrs_url, notice: 'Ordr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordr
      @ordr = Ordr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordr_params
      params.require(:ordr).permit(:orderno, :trackno, :paytype, :total, :orderdate, :user_id, :address_id, ordrproducts_attributes:[:quantity,:product_id])
    end
end
