class ReductionOptionsController < ApplicationController
  before_action :set_reduction_option, only: [:show, :edit, :update, :destroy]

  # GET /reduction_options
  # GET /reduction_options.json
  def index
    @reduction_options = ReductionOption.all
  end

  # GET /reduction_options/1
  # GET /reduction_options/1.json
  def show
  end

  # GET /reduction_options/new
  def new
    @reduction_option = ReductionOption.new
  end

  # GET /reduction_options/1/edit
  def edit
  end

  # POST /reduction_options
  # POST /reduction_options.json
  def create
    @reduction_option = ReductionOption.new(reduction_option_params)

    respond_to do |format|
      if @reduction_option.save
        format.html { redirect_to @reduction_option, notice: 'Reduction option was successfully created.' }
        format.json { render :show, status: :created, location: @reduction_option }
      else
        format.html { render :new }
        format.json { render json: @reduction_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reduction_options/1
  # PATCH/PUT /reduction_options/1.json
  def update
    respond_to do |format|
      if @reduction_option.update(reduction_option_params)
        format.html { redirect_to @reduction_option, notice: 'Reduction option was successfully updated.' }
        format.json { render :show, status: :ok, location: @reduction_option }
      else
        format.html { render :edit }
        format.json { render json: @reduction_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reduction_options/1
  # DELETE /reduction_options/1.json
  def destroy
    @reduction_option.destroy
    respond_to do |format|
      format.html { redirect_to reduction_options_url, notice: 'Reduction option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reduction_option
      @reduction_option = ReductionOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reduction_option_params
      params.require(:reduction_option).permit(:title, :description, :image_url,  :carbon_impact)
    end
end
