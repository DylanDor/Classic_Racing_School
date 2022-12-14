class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # # GET /users or /users.json
  # def index
  #   @users = User.all
  # end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # # GET /users/new
  # def new
  #   @user = User.new
  # end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  # def create
  #   @user = User.new(user_params)

  #   respond_to do |format|
  #     if @user.save
  #       format.html { redirect_to user_url(@user), notice: "User was successfully created." }
  #       format.json { render :show, status: :created, location: @user }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "Votre profile a bien été mis à jour." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {}).permit(:first_name, :last_name, :email, :phone, :height, :birthday, :newsletter, :weight, :clothing_size, :helmet_size, :shoe_size, :driving_experience, :driving_experience_specifics, :coaching_expectations, :food_restriction, :address, :medical_contraindication, :how_know_CRS, :people_who_recommended, :comments_to_organization, :photo_publication_consent, :instagram_nickname, :personal_data_consent, :password)
    end
end
