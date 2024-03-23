class HomeTestsController < ApplicationController
  before_action :set_home_test, only: %i[ show edit update destroy ]

  # GET /home_tests or /home_tests.json
  def index
    @home_tests = HomeTest.all
  end

  # GET /home_tests/1 or /home_tests/1.json
  def show
  end

  # GET /home_tests/new
  def new
    @home_test = HomeTest.new
  end

  # GET /home_tests/1/edit
  def edit
  end

  # POST /home_tests or /home_tests.json
  def create
    @home_test = HomeTest.new(home_test_params)

    respond_to do |format|
      if @home_test.save
        format.html { redirect_to home_test_url(@home_test), notice: "Home test was successfully created." }
        format.json { render :show, status: :created, location: @home_test }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_tests/1 or /home_tests/1.json
  def update
    respond_to do |format|
      if @home_test.update(home_test_params)
        format.html { redirect_to home_test_url(@home_test), notice: "Home test was successfully updated." }
        format.json { render :show, status: :ok, location: @home_test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_tests/1 or /home_tests/1.json
  def destroy
    @home_test.destroy

    respond_to do |format|
      format.html { redirect_to home_tests_url, notice: "Home test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_test
      @home_test = HomeTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_test_params
      params.require(:home_test).permit(:title, :user_id, :content, :title_ar, :content_ar)
    end
end
