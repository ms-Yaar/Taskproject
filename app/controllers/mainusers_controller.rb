class MainusersController < ApplicationController
  
  before_action :set_mainuser, only: %i[ show edit update destroy ]

  # GET /mainusers or /mainusers.json
  def index
    @mainusers = Mainuser.all
  end

  # GET /mainusers/1 or /mainusers/1.json
  def show
  end

  # GET /mainusers/new
  def new
    @mainuser = Mainuser.new
  end

  # GET /mainusers/1/edit
  def edit
  end

  # POST /mainusers or /mainusers.json
  def create
    @mainuser = Mainuser.new(mainuser_params)

    respond_to do |format|
      if @mainuser.save
        format.html { redirect_to mainuser_url(@mainuser), notice: "Mainuser was successfully created." }
        format.json { render :show, status: :created, location: @mainuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainusers/1 or /mainusers/1.json
  def update
    respond_to do |format|
      if @mainuser.update(mainuser_params)
        format.html { redirect_to mainuser_url(@mainuser), notice: "Mainuser was successfully updated." }
        format.json { render :show, status: :ok, location: @mainuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainusers/1 or /mainusers/1.json
  def destroy
    @mainuser.destroy!

    respond_to do |format|
      format.html { redirect_to mainusers_url, notice: "Mainuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainuser
      @mainuser = Mainuser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainuser_params
      params.require(:mainuser).permit(:name, :email, :password, :mainuser_type)
    end
end
