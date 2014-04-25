class NewslettersController < ApplicationController
   skip_before_action :authorize, only: [:new, :create, :show, :update, :destroy]

#YouTube. 2014. Intro to Rails - ActionMailer. [online] 
#Available at: http://www.youtube.com/watch?v=NmVIkaRUb4s [Accessed: 6 Jan 2014].
#
#Guides.rubyonrails.org. 2014. Action Mailer Basics — Ruby on Rails Guides. [online] 
#Available at: http://guides.rubyonrails.org/action_mailer_basics.html [Accessed: 6 Apr 2014].
#  
   
  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.all
	 # redirect_to home_url, notice: "Logged out"

  end

  # GET /newsletters/1
  # GET /newsletters/1.json
  def show
    #added code to get rid of no method nill class error
    @newsletter = Newsletter.find(params[:id])
  end

  # GET /newsletters/new
  def new
    @newsletter = Newsletter.new
	    
end
  # GET /newsletters/1/edit
  def edit
  end

  # POST /newsletters
  # POST /newsletters.json
  def create
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
	  PurchasedDeal.welcome_email(@newsletter).deliver
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newsletter }
      else
        format.html { render action: 'new' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsletters/1
  # PATCH/PUT /newsletters/1.json
  def update
    respond_to do |format|
      if @newsletter.update(newsletter_params)
        format.html { redirect_to home_url, notice: 'Newsletter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsletters/1
  # DELETE /newsletters/1.json #changed code params id
  def destroy
    @newsletter = Newsletter.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to newsletters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id]) 
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:newsletter).permit(:name, :email, :agree)
    end
end
