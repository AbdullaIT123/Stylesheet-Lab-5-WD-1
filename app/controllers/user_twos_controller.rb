class UserTwosController < ApplicationController
  before_action :set_user_two, only: [:show, :edit, :update, :destroy]

  # GET /user_twos
  # GET /user_twos.json
  def index
    @user_twos = UserTwo.all
  end

  # GET /user_twos/1
  # GET /user_twos/1.json
  def show
  end

  # GET /user_twos/new
  def new
    @user_two = UserTwo.new
  end

  # GET /user_twos/1/edit
  def edit
  end

  # POST /user_twos
  # POST /user_twos.json
  def create
    @user_two = UserTwo.new(user_two_params)

    respond_to do |format|
      if @user_two.save
        format.html { redirect_to @user_two, notice: 'User two was successfully created.' }
        format.json { render :show, status: :created, location: @user_two }
      else
        format.html { render :new }
        format.json { render json: @user_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_twos/1
  # PATCH/PUT /user_twos/1.json
  def update
    respond_to do |format|
      if @user_two.update(user_two_params)
        format.html { redirect_to @user_two, notice: 'User two was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_two }
      else
        format.html { render :edit }
        format.json { render json: @user_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_twos/1
  # DELETE /user_twos/1.json
  def destroy
    @user_two.destroy
    respond_to do |format|
      format.html { redirect_to user_twos_url, notice: 'User two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_two
      @user_two = UserTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_two_params
      params.require(:user_two).permit(:name, :email)
    end
end
