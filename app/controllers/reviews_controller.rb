class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @manners = Manner.all
    @users = User.all
    @review = Review.new
  end

  def create
    @users = User.all
    @manners = Manner.all
    @review = Review.new(review_params)
    if @review.save
      flash[:success] = "レビューを投稿しました"
      redirect_to show_reviews_url
    else
      render 'new'
    end
  end

  private
    def review_params
      params.require(:review).permit(:user_id, :manner_id, :star, :text)
    end
end
