class VTypesController < ApplicationController
  def index
    @vtypes = VType.all
  end

  def new
    @vtype = VType.new
  end

  def create
    @vtype = VType.new(vtype_params)
    if @vtype.save
      redirect_to @vtype
    else
      render 'new'
    end
  end

  def show
    @vtype = find_vtype_by_id
  end

  def edit
    @vtype = find_vtype_by_id
  end

  def update
    @vtype = find_vtype_by_id
    if @vtype.update_attributes(vtype_params)
      redirect_to @vtype
    else
      render 'edit'
    end
  end

  def destroy
    find_vtype_by_id.destroy
    redirect_to v_types_url
  end

  private
    def vtype_params
      params.require(:v_type).permit(:name)
    end

    def find_vtype_by_id
      VType.find(params[:id])
    end
end
