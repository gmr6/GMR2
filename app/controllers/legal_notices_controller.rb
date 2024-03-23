class LegalNoticesController < ApplicationController
  before_action :set_legal_notice, only: %i[ show edit update destroy ]

  # GET /legal_notices or /legal_notices.json
  def index
    @legal_notices = LegalNotice.all
  end

  # GET /legal_notices/1 or /legal_notices/1.json
  def show
  end

  # GET /legal_notices/new
  def new
    @legal_notice = LegalNotice.new
  end

  # GET /legal_notices/1/edit
  def edit
  end

  # POST /legal_notices or /legal_notices.json
  def create
    @legal_notice = LegalNotice.new(legal_notice_params)

    respond_to do |format|
      if @legal_notice.save
        format.html { redirect_to legal_notice_url(@legal_notice), notice: "Legal notice was successfully created." }
        format.json { render :show, status: :created, location: @legal_notice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @legal_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legal_notices/1 or /legal_notices/1.json
  def update
    respond_to do |format|
      if @legal_notice.update(legal_notice_params)
        format.html { redirect_to legal_notice_url(@legal_notice), notice: "Legal notice was successfully updated." }
        format.json { render :show, status: :ok, location: @legal_notice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @legal_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_notices/1 or /legal_notices/1.json
  def destroy
    @legal_notice.destroy

    respond_to do |format|
      format.html { redirect_to legal_notices_url, notice: "Legal notice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legal_notice
      @legal_notice = LegalNotice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def legal_notice_params
      params.require(:legal_notice).permit(:title, :user_id, :content, :content_ar, :title_ar)
    end
end
