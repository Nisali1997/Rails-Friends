class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "My name is Nisali. This is a instant variable. It can be used in anywhere in the app"
  end
end
