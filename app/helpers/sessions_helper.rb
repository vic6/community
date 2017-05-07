module SessionsHelper
  def log_in(tenant)
    session[:tenant_id] = tenant.id
  end

  def current_tenant
    @current_tenant ||= Tenant.find_by(id: session[:tenant_id])
  end
end
