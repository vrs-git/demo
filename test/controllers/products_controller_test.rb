require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { MRP: @product.MRP, SP: @product.SP, active: @product.active, additional_features: @product.additional_features, category_id: @product.category_id, discount: @product.discount, full_desp: @product.full_desp, highlights: @product.highlights, imp_note: @product.imp_note, installation: @product.installation, instock: @product.instock, owner_id: @product.owner_id, product_name: @product.product_name, seller_name: @product.seller_name, specification: @product.specification, unit_bredth: @product.unit_bredth, unit_height: @product.unit_height, unit_in_order: @product.unit_in_order, unit_in_stock: @product.unit_in_stock, unit_length: @product.unit_length, unit_weight: @product.unit_weight, warranty_summary: @product.warranty_summary }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { MRP: @product.MRP, SP: @product.SP, active: @product.active, additional_features: @product.additional_features, category_id: @product.category_id, discount: @product.discount, full_desp: @product.full_desp, highlights: @product.highlights, imp_note: @product.imp_note, installation: @product.installation, instock: @product.instock, owner_id: @product.owner_id, product_name: @product.product_name, seller_name: @product.seller_name, specification: @product.specification, unit_bredth: @product.unit_bredth, unit_height: @product.unit_height, unit_in_order: @product.unit_in_order, unit_in_stock: @product.unit_in_stock, unit_length: @product.unit_length, unit_weight: @product.unit_weight, warranty_summary: @product.warranty_summary }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
