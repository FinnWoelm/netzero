class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  include ActionView::Helpers::TextHelper
  
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end
  
  def show_commitments    
    @user = User.find_by_username(params[:user_name]) or not_found
    
    @commitments = @user.commitments.shuffle
    
    @layout_fluid = true
    @site_title = "#{@user.name.possessive} Climate Commitments"
    @site_description = "#{@user.name} has committed to take #{pluralize(@commitments.count, "climate action")} in 2016. What will you do to make a difference?"
    @site_image = "climate-commitments.jpg"
    @site_url = show_user_commitments_url(@user.username)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    @user.plain_password = Array.new(10).map { (65 + rand(58)).chr }.join
    @user.password = @user.plain_password

    @user.username = @user.generate_username
    
    if User.find_by_username(@user.username)
      @user.username += User.where(:username => @user.username).count.to_s
    end
    
    respond_to do |format|
      if @user.save        
        flash[:info] = "<strong>Wonderful!</strong> We\'ve sent you an access code. You should have new mail within the next 3 minutes and 24 seconds..."
        flash[:username] = @user.username
        format.html { redirect_to login_path}
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :name, :code, :password_digest)
    end
          
end
