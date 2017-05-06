class TenantsController < ApplicationController
  def show
    @tenant = Tenant.find(params[:id])
  end

  def new
    @tenant = Tenant.new
  end

  def create
    @tenant = Tenant.create(tenant_params)
    @tenant.apartment_id = 1
    if @tenant.save
      flash[:success] = 'Welcome to Community!'
      redirect_to @tenant
    else
      render 'new'
    end
  end

  private

  def tenant_params
    params.require(:tenant).permit(:first_name, :last_name,
                                   :email, :password,
                                   :password_confirmation)
  end
end
