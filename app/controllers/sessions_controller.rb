class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:new]

  def new
  end
end
