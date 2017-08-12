class StuHasDepsController < ApplicationController
  before_action :set_stu_has_dep, only: [:show, :edit, :update, :destroy]

  # GET /stu_has_deps
  # GET /stu_has_deps.json
  def index
    @stu_has_deps = StuHasDep.all
  end

  # GET /stu_has_deps/1
  # GET /stu_has_deps/1.json
  def show
  end

  # GET /stu_has_deps/new
  def new
    @stu_has_dep = StuHasDep.new
  end

  # GET /stu_has_deps/1/edit
  def edit
  end

  # POST /stu_has_deps
  # POST /stu_has_deps.json
  def create
    @stu_has_dep = StuHasDep.new(stu_has_dep_params)

    respond_to do |format|
      if @stu_has_dep.save
        format.html { redirect_to @stu_has_dep, notice: 'Stu has dep was successfully created.' }
        format.json { render :show, status: :created, location: @stu_has_dep }
      else
        format.html { render :new }
        format.json { render json: @stu_has_dep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stu_has_deps/1
  # PATCH/PUT /stu_has_deps/1.json
  def update
    respond_to do |format|
      if @stu_has_dep.update(stu_has_dep_params)
        format.html { redirect_to @stu_has_dep, notice: 'Stu has dep was successfully updated.' }
        format.json { render :show, status: :ok, location: @stu_has_dep }
      else
        format.html { render :edit }
        format.json { render json: @stu_has_dep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stu_has_deps/1
  # DELETE /stu_has_deps/1.json
  def destroy
    @stu_has_dep.destroy
    respond_to do |format|
      format.html { redirect_to stu_has_deps_url, notice: 'Stu has dep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stu_has_dep
      @stu_has_dep = StuHasDep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stu_has_dep_params
      params.require(:stu_has_dep).permit(:department_id, :studentt_id)
    end
end
