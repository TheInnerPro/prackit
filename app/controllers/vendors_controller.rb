class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
    @vtypes = VType.all.map { |vtype| [vtype.name, vtype.id] }
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to @vendor
    else
      render 'new'
    end
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def edit
    @vendor = Vendor.find(params[:id])
    @vtypes = VType.all
  end

  def update
    @vendor = Vendor.find(params[:id])
    @vendor.v_types.delete_all
    if @vendor.update_attributes(vendor_params)
      params[:vendor][:v_types].each do |k,v|
        if !k.empty?
          @vendor.v_types << VType.find(k)
        end
      end
      redirect_to @vendor
    else
      render 'edit'
    end
  end

  def destroy
    Vendor.find(params[:id]).destroy
    redirect_to vendors_url
  end

  private

    def vendor_params
      params.require(:vendor).permit(:name, :url, :logo, :v_types)
    end
end
