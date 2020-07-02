class UserAtrributeValuesController < ApplicationController
  before_action :set_user_atrribute_value, only: [:show, :update, :destroy]

  # GET /user_atrribute_values
  def index
    @user_atrribute_values = UserAtrributeValue.all

    render json: @user_atrribute_values
  end

  # GET /user_atrribute_values/1
  def show
    render json: @user_atrribute_value
  end

  # POST /user_atrribute_values
  def create
    @user_atrribute_value = UserAtrributeValue.new(user_atrribute_value_params)

    if @user_atrribute_value.save
      render json: @user_atrribute_value, status: :created, location: @user_atrribute_value
    else
      render json: @user_atrribute_value.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_atrribute_values/1
  def update
    if @user_atrribute_value.update(user_atrribute_value_params)
      render json: @user_atrribute_value
    else
      render json: @user_atrribute_value.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_atrribute_values/1
  def destroy
    @user_atrribute_value.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_atrribute_value
      @user_atrribute_value = UserAtrributeValue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_atrribute_value_params
      params.require(:user_atrribute_value).permit(:user_attribute_id, :user_id, :value)
    end
end
