class Api::V1::UsersController < ApplicationController
  before_action :set_api_v1_user, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/users
  # GET /api/v1/users.json
  def index
    @users = User.all
  end

  # GET /api/v1/users/1
  # GET /api/v1/users/1.json
  def show
    @user = User.find(params[:id])
  end

  ##
  # == POST /api/v1/users
  # == POST /api/v1/users.json
  #
  # Authenticate the user and save
  # [Required POST VARS]
  #   email::
  #   password::
  # === Success
  # [200] OK
  # === Failure
  # [420] User must be logged in
  # [422] Invalid params
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.json { render action: 'show', status: :created }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/users/1
  # PATCH/PUT /api/v1/users/1.json
  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.json { head :no_content, status: 200}
      else
        format.json { render json: @user.errors, status: :unprocessable_entity } #422
      end
    end
  end

  # DELETE /api/v1/users/1
  # DELETE /api/v1/users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:email, :password)
    end
end
