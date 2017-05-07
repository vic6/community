module SessionsHelper
  def log_in(tenant)
    session[:tenant_id] = tenant.id
  end

  def current_tenant
    @current_tenant ||= Tenant.find_by(id: session[:tenant_id])
  end

  def logged_in?
    !current_tenant.nil?
  end

  def log_out
    session.delete(:tenant_id)
    @current_tenant = nil
  end
end
