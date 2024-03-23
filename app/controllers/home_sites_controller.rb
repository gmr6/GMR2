class HomeSitesController < ApplicationController
  before_action :set_home_site, only: %i[ show edit update destroy ]

  # GET /home_sites or /home_sites.json
  def index
    @home_sites = HomeSite.all
  end

  # GET /home_sites/1 or /home_sites/1.json
  def show
  end

  # GET /home_sites/new
  def new
    @home_site = HomeSite.new
  end

  # GET /home_sites/1/edit
  def edit
  end

  # POST /home_sites or /home_sites.json
  def create
    @home_site = HomeSite.new(home_site_params)

    respond_to do |format|
      if @home_site.save
        format.html { redirect_to home_site_url(@home_site), notice: "Home site was successfully created." }
        format.json { render :show, status: :created, location: @home_site }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_sites/1 or /home_sites/1.json
  def update
    respond_to do |format|
      if @home_site.update(home_site_params)
        format.html { redirect_to home_site_url(@home_site), notice: "Home site was successfully updated." }
        format.json { render :show, status: :ok, location: @home_site }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_sites/1 or /home_sites/1.json
  def destroy
    @home_site.destroy

    respond_to do |format|
      format.html { redirect_to home_sites_url, notice: "Home site was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_site
      @home_site = HomeSite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_site_params
      params.require(:home_site).permit(:title, :user_id, :image)
    end
end
