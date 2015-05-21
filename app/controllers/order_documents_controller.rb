class OrderDocumentsController < ApplicationController
  before_action :set_order_document, only: [:show, :edit, :update, :destroy]

  # GET /order_documents
  # GET /order_documents.json
  def index
    @order_documents = OrderDocument.all
  end

  # GET /order_documents/1
  # GET /order_documents/1.json
  def show
  end

  # GET /order_documents/new
  def new
    @order_document = OrderDocument.new
  end

  # GET /order_documents/1/edit
  def edit
  end

  # POST /order_documents
  # POST /order_documents.json
  def create
    @order_document = OrderDocument.new(order_document_params)

    respond_to do |format|
      if @order_document.save
        format.html { redirect_to @order_document, notice: 'Order document was successfully created.' }
        format.json { render :show, status: :created, location: @order_document }
      else
        format.html { render :new }
        format.json { render json: @order_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_documents/1
  # PATCH/PUT /order_documents/1.json
  def update
    respond_to do |format|
      if @order_document.update(order_document_params)
        format.html { redirect_to @order_document, notice: 'Order document was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_document }
      else
        format.html { render :edit }
        format.json { render json: @order_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_documents/1
  # DELETE /order_documents/1.json
  def destroy
    @order_document.destroy
    respond_to do |format|
      format.html { redirect_to order_documents_url, notice: 'Order document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_document
      @order_document = OrderDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_document_params
      params.require(:order_document).permit(:value, :document_id, :order_id)
    end
end
