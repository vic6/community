class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
