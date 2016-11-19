class CountersController < ApplicationController
  def index
    @counter = Counter.first
  end

  def count
    c = Counter.first
    c.count += 1
    c.save
    redirect_to root_path
  end
end
