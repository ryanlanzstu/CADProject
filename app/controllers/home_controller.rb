class HomeController < ApplicationController
  def index
  end

  def modules
    @collegemodules = Collegemodule.all
  end

  def calendar
  end

end
