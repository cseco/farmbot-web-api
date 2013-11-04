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
    binding.pry
    @user = User.find(params[:id])
  end

  # POST /api/v1/users
  # POST /api/v1/users.json
  def create
    @user = User.new(api_v1_user_params)

    respond_to do |format|
      if @user.save
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/users/1
  # PATCH/PUT /api/v1/users/1.json
  def update
    respond_to do |format|
      if @user.update(api_v1_user_params)
        format.json { head :no_content }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
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
    def api_v1_user_params
      params[:api_v1_user]
    end
end
