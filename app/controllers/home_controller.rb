class HomeController < ApplicationController
  def index
    render
  end

  def newsletter
    render "newsletter", layout: false
  end
end
