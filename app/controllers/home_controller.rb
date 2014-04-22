class HomeController < ApplicationController
  def index
    render
  end

  def newsletter
    render layout: 'issue'
  end
end
