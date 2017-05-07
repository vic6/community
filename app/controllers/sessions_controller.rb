class SessionsController < ApplicationController
  def new
  end

  def create
    tenant = Tenant.find_by(email: params[:session][:email].downcase)
    if tenant && tenant.authenticate(params[:session][:password])
      log_in tenant
      redirect_to tenant
    else
      flash.now[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def delete
    log_out
    redirect_to root_url
  end
end
