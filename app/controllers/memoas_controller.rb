class MemoasController < ApplicationController
  before_action :set_memoa, only: [:show, :edit, :update, :destroy]

  # GET /memoas
  # GET /memoas.json
  def index
    @memoas = Memoa.all
  end

  # GET /memoas/1
  # GET /memoas/1.json
  def show
  end

  # GET /memoas/new
  def new
    @memoa = Memoa.new
  end

  # GET /memoas/1/edit
  def edit
  end

  # POST /memoas
  # POST /memoas.json
  def create
    @memoa = Memoa.new(memoa_params)

    respond_to do |format|
      if @memoa.save
        format.html { redirect_to @memoa, notice: 'Memoa was successfully created.' }
        format.json { render :show, status: :created, location: @memoa }
      else
        format.html { render :new }
        format.json { render json: @memoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memoas/1
  # PATCH/PUT /memoas/1.json
  def update
    respond_to do |format|
      if @memoa.update(memoa_params)
        format.html { redirect_to @memoa, notice: 'Memoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @memoa }
      else
        format.html { render :edit }
        format.json { render json: @memoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memoas/1
  # DELETE /memoas/1.json
  def destroy
    @memoa.destroy
    respond_to do |format|
      format.html { redirect_to memoas_url, notice: 'Memoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memoa
      @memoa = Memoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def memoa_params
      params.require(:memoa).permit(:name, :description, :picture)
    end
end
