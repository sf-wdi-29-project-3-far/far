class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render :index
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    if current_user == nil
      redirect_to sign_in_path
    else
      render :show
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @art = Art.new()
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:success] = "Welcome to FAR!"
      redirect_to @user
    else
      redirect_to new_user_path, flash: {error: @user.errors.full_messages.to_sentence}
    end

    # respond_to do |format|
    #   if @user.save
    #     login(@user)
    #     format.html { redirect_to @user, notice: 'User was successfully created.' }
    #     format.json { render :show, status: :created, location: @user }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
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
    @user = User.find(params[:id])
    session.delete(:user_id)
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    # POST for art category
  def arts
    @user = current_user
    @art = Art.create(art_params)
    @user.art_id = @art.id
    @user.save
    redirect_to edit_user_path
  end

  def new_match
    @match = Match.new()
    render :match_form
  end

  def find_match
    @user = current_user
    @form_match = Match.create(match_params)
    @matches = @user.search_for_matches(@form_match)
    render :matches
  end


  def match_params
    params.require(:match).permit(:language, :origin_country, :current_country, :male, :female, :other_gender, :age, :interests=>[])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation, :current_city, :origin_city, :native_language, :languages, :age, :image)
    end


end
