class DealsController < ApplicationController
   skip_before_action :authorize, only: [:show, :view] #limiting access
  before_action :set_deal, only: [:show, :edit, :update, :destroy]
  
  #validates_attachment_file_photo :photo, :matches => [/png\Z/, /jpe?g\Z/]
 #validates :name, :description, :image_url, presence: true
  # GET /deals
  # GET /deals.json
  def index
    @deals = Deal.all
  end

  # GET /deals/1
  # GET /deals/1.json
  def show
  @deals = Deal.all
  end
 
  # GET /deals/new
  def new
    @deal = Deal.new
  end

  # GET /deals/1/edit
  def edit
  end

  # POST /deals
  # POST /deals.json
  def create
    @deal = Deal.new(deal_params)

    respond_to do |format|
      if @deal.save
        format.html { redirect_to @deal, notice: 'Deal was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deal }
      else
        format.html { render action: 'new' }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deals/1
  # PATCH/PUT /deals/1.json
  def update
    respond_to do |format|
      if @deal.update(deal_params)
        format.html { redirect_to @deal, notice: 'Deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1
  # DELETE /deals/1.json
  def destroy
    @deal.destroy
    respond_to do |format|
      format.html { redirect_to deals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deal
      @deal = Deal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deal_params
      params.require(:deal).permit(:name, :category, :description, :image_url, :price, :value, :address, :latitude, :longitude, :status, :terms, :photo)
    end
end