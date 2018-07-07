class StaticPagesController < ApplicationController
  def home
  end

  def show
    @manners = Manner.all
    @users = User.all
    @reviews = Review.all.order(updated_at: :desc)
  end
end
