class HomeController < ApplicationController

  def index
    render layout: 'landing'
  end

  def newsletter
    render layout: 'issue'
  end
end
