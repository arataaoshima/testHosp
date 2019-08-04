class UserMaterialsController < ApplicationController
  before_action :set_user_material, only: [:show, :edit, :update, :destroy]

  # GET /user_materials
  # GET /user_materials.json
  def index
    @user_materials = UserMaterial.all
  end

  # GET /user_materials/1
  # GET /user_materials/1.json
  def show
  end

  # GET /user_materials/new
  def new
    @user_material = UserMaterial.new
  end

  # GET /user_materials/1/edit
  def edit
  end

  # POST /user_materials
  # POST /user_materials.json
  def create
    @user_material = UserMaterial.new(user_material_params)

    respond_to do |format|
      if @user_material.save
        format.html { redirect_to @user_material, notice: 'User material was successfully created.' }
        format.json { render :show, status: :created, location: @user_material }
      else
        format.html { render :new }
        format.json { render json: @user_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_materials/1
  # PATCH/PUT /user_materials/1.json
  def update
    respond_to do |format|
      if @user_material.update(user_material_params)
        format.html { redirect_to @user_material, notice: 'User material was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_material }
      else
        format.html { render :edit }
        format.json { render json: @user_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_materials/1
  # DELETE /user_materials/1.json
  def destroy
    @user_material.destroy
    respond_to do |format|
      format.html { redirect_to user_materials_url, notice: 'User material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_material
      @user_material = UserMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_material_params
      params.require(:user_material).permit(:user_id, :material_id)
    end
end
