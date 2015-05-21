require 'test_helper'

class OrderDocumentsControllerTest < ActionController::TestCase
  setup do
    @order_document = order_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_document" do
    assert_difference('OrderDocument.count') do
      post :create, order_document: { document_id: @order_document.document_id, order_id: @order_document.order_id, value: @order_document.value }
    end

    assert_redirected_to order_document_path(assigns(:order_document))
  end

  test "should show order_document" do
    get :show, id: @order_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_document
    assert_response :success
  end

  test "should update order_document" do
    patch :update, id: @order_document, order_document: { document_id: @order_document.document_id, order_id: @order_document.order_id, value: @order_document.value }
    assert_redirected_to order_document_path(assigns(:order_document))
  end

  test "should destroy order_document" do
    assert_difference('OrderDocument.count', -1) do
      delete :destroy, id: @order_document
    end

    assert_redirected_to order_documents_path
  end
end
