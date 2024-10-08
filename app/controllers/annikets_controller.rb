class AnniketsController < ApplicationController
  before_action :set_anniket, only: %i[ show edit update destroy ]

  # GET /annikets or /annikets.json
  def index
    @annikets = Anniket.all
  end

  # GET /annikets/1 or /annikets/1.json
  def show
  end

  # GET /annikets/new
  def new
    @anniket = Anniket.new
  end

  # GET /annikets/1/edit
  def edit
  end

  # POST /annikets or /annikets.json
  def create
    @anniket = Anniket.new(anniket_params)

    respond_to do |format|
      if @anniket.save
        format.html { redirect_to @anniket, notice: "Anniket was successfully created." }
        format.json { render :show, status: :created, location: @anniket }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anniket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /annikets/1 or /annikets/1.json
  def update
    respond_to do |format|
      if @anniket.update(anniket_params)
        format.html { redirect_to @anniket, notice: "Anniket was successfully updated." }
        format.json { render :show, status: :ok, location: @anniket }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anniket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annikets/1 or /annikets/1.json
  def destroy
    @anniket.destroy!

    respond_to do |format|
      format.html { redirect_to annikets_path, status: :see_other, notice: "Anniket was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anniket
      @anniket = Anniket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anniket_params
      params.require(:anniket).permit(:title, :description)
    end
end
