class UserGroupsController < ApplicationController
  before_action :set_user_group, only: %i[ show edit update destroy ]

  # GET /user_groups or /user_groups.json
  def index
    @user_groups = UserGroup.all
  end

  # GET /user_groups/1 or /user_groups/1.json
  def show
  end

  # GET /user_groups/new
  def new
    @user_group = UserGroup.new
  end

  # GET /user_groups/1/edit
  def edit
  end

  # POST /user_groups or /user_groups.json
  def create
    @user_group = UserGroup.new(user_group_params)

    respond_to do |format|
      if @user_group.save
        format.html { redirect_to user_group_url(@user_group), notice: "User group was successfully created." }
        format.json { render :show, status: :created, location: @user_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_groups/1 or /user_groups/1.json
  def update
    respond_to do |format|
      if @user_group.update(user_group_params)
        format.html { redirect_to user_group_url(@user_group), notice: "User group was successfully updated." }
        format.json { render :show, status: :ok, location: @user_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_groups/1 or /user_groups/1.json
  def destroy
    @user_group.destroy

    respond_to do |format|
      format.html { redirect_to user_groups_url, notice: "User group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_group
      @user_group = UserGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_group_params
      params.fetch(:user_group, {})
    end
end
