class VisitorsController < ApplicationController
  def index
    page = 'index'
    binding.pry
    if !current_user.nil? && current_user.type.nil?
      page = 'choose-role'
      binding.pry
    end
    render page
  end
end
