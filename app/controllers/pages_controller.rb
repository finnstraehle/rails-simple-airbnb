class PagesController < ApplicationController
  def admin
    @flats = Flat.all
  end
end
