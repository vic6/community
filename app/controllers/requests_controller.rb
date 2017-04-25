class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
  end

  def create
    @request = Request.new(reqest_params)
    @reqeust.save
    redirect '/requests'
  end

  def edit
  end

  private

  def request_params
    params.require(:request).permit(:requester_id, :acceptor_id, package_id)
  end
end
