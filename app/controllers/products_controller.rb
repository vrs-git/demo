class ProductsController < ApplicationController
  
  # before_action :authenticate_owner!


  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all



  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product_best_seller = Product.order('RANDOM()').limit(3);
    @product_new = Product.order('RANDOM()').limit(4);
    @categories = Category.order('RANDOM()').limit(8);
    @categoriesall = Category.all;
    @cat_ran_three = Category.order('RANDOM()').limit(3);

  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    @product.owner_id = current_owner.id
    @product.seller_name = current_owner.email

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update

    @product.owner_id = current_owner.id
    @product.seller_name = current_owner.email

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_name, :MRP,
       :SP, :discount, :active, :instock, :warranty_summary,
        :highlights, :imp_note, :owner_id, :category_id, :seller_name,
         :full_desp, :specification, :installation, :unit_in_order,
          :unit_in_stock, :unit_length, :unit_bredth, :unit_height,
           :unit_weight, :additional_features, :image_1,:image_2,:image_3,
           :image_4, :image_5)
    end
end
