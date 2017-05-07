class SessionsController < ApplicationController
  def new
  end

  def create
    tenant = Tenant.find_by(email: params[:session][:email].downcase)
    if tenant && tenant.authenticate(params[:session][:password])
      # login(tenant)
    else
      flash.now[:danger] = 'Invalid email/password'
      render 'new'
    end
  end

  def delete
  end
end
