class StaticPagesController < ApplicationController
  def home
    @manners = Manner.all
  end

  def show
    m_id = params[:manner_id]
    @current_manner = nil
    if m_id.nil?
      @reviews = Review.all.order(updated_at: :desc)
    else
      @current_manner = Manner.find(m_id)
      @reviews = Review.where(manner_id: m_id).order(updated_at: :desc)
      count = 0;
      total = 0;
      for r in @reviews do
        total += r.star
        count += 1.0
      end
      @average = total/count
    end
    @manners = Manner.all
    @users = User.all
  end

end
