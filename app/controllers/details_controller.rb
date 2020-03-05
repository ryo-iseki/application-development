class DetailsController < ApplicationController
  def index
    @details = Detail.all
    @articles = {"April 2018" => 1, "May 2018" => 5}
  end
end
