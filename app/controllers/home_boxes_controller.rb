class HomeBoxesController < ApplicationController
  before_action :set_home_box, only: %i[ show edit update destroy ]

  # GET /home_boxes or /home_boxes.json
  def index
    @home_boxes = HomeBox.all
  end

  # GET /home_boxes/1 or /home_boxes/1.json
  def show
  end

  # GET /home_boxes/new
  def new
    @home_box = HomeBox.new
  end

  # GET /home_boxes/1/edit
  def edit
  end

  # POST /home_boxes or /home_boxes.json
  def create
    @home_box = HomeBox.new(home_box_params)

    respond_to do |format|
      if @home_box.save
        format.html { redirect_to home_box_url(@home_box), notice: "Home box was successfully created." }
        format.json { render :show, status: :created, location: @home_box }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_boxes/1 or /home_boxes/1.json
  def update
    respond_to do |format|
      if @home_box.update(home_box_params)
        format.html { redirect_to home_box_url(@home_box), notice: "Home box was successfully updated." }
        format.json { render :show, status: :ok, location: @home_box }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_boxes/1 or /home_boxes/1.json
  def destroy
    @home_box.destroy

    respond_to do |format|
      format.html { redirect_to home_boxes_url, notice: "Home box was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_box
      @home_box = HomeBox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_box_params
      params.require(:home_box).permit(:title, :description, :user_id, :title_ar, :description_ar)
    end
end
