class Model2sController < ApplicationController
  before_action :set_model2, only: [:show, :edit, :update, :destroy]

  # GET /model2s
  # GET /model2s.json
  def index
    @model2s = Model2.all
  end

  # GET /model2s/1
  # GET /model2s/1.json
  def show
  end

  # GET /model2s/new
  def new
    @model2 = Model2.new
  end

  # GET /model2s/1/edit
  def edit
  end

  # POST /model2s
  # POST /model2s.json
  def create
    @model2 = Model2.new(model2_params)

    respond_to do |format|
      if @model2.save
        format.html { redirect_to @model2, notice: 'Model2 was successfully created.' }
        format.json { render :show, status: :created, location: @model2 }
      else
        format.html { render :new }
        format.json { render json: @model2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model2s/1
  # PATCH/PUT /model2s/1.json
  def update
    respond_to do |format|
      if @model2.update(model2_params)
        format.html { redirect_to @model2, notice: 'Model2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @model2 }
      else
        format.html { render :edit }
        format.json { render json: @model2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model2s/1
  # DELETE /model2s/1.json
  def destroy
    @model2.destroy
    respond_to do |format|
      format.html { redirect_to model2s_url, notice: 'Model2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model2
      @model2 = Model2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model2_params
      params.require(:model2).permit(:title)
    end
end
