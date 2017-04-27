class PackagesController < ApplicationController
  def new
  end

  def create
    @package = Package.new(package_params)
    @package.save!
    redirect_to '/requests'
  end

  private

  def package_params
    params.require(:package).permit(:name, :tracking_number)
  end
end
