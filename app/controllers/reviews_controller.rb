class ReviewsController < InheritedResources::Base

  def create
    @review = Review.new(review_params)

    @review.user_id = User.first.id
    @review.product_id = Product.first.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def review_params
      params.require(:review).permit(:review, :user_id, :product_id , :rating)
    end
end

