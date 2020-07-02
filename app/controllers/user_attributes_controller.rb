class UserAttributesController < ApplicationController
  before_action :set_user_attribute, only: [:show, :update, :destroy]

  # GET /user_attributes
  def index
    @user_attributes = UserAttribute.all

    render json: @user_attributes
  end

  # GET /user_attributes/1
  def show
    render json: @user_attribute
  end

  # POST /user_attributes
  def create
    @user_attribute = UserAttribute.new(user_attribute_params)

    if @user_attribute.save
      render json: @user_attribute, status: :created, location: @user_attribute
    else
      render json: @user_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_attributes/1
  def update
    if @user_attribute.update(user_attribute_params)
      render json: @user_attribute
    else
      render json: @user_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_attributes/1
  def destroy
    @user_attribute.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_attribute
      @user_attribute = UserAttribute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_attribute_params
      params.require(:user_attribute).permit(:name, :required, :type)
    end
end
