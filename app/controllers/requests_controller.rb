class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @order = Order.find(params[:order_id])
    redirect_to root_path unless @order.user == current_user
    @requests = @order.requests.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
    @order = Order.find(params[:order_id])
    @request = Request.find(params[:id])
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find(params[:id])
  end

  # POST /requests
  # POST /requests.json
  def create
    @order = Order.find(params[:order_id])
    @request = @order.requests.build(request_params)
    @request.user = current_user

    respond_to do |format|
      if @request.save
        format.html { redirect_to order_request_url(@order, @request), notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    @order = Order.find(params[:order_id])
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to order_path(@order), notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to pets_path, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def my
    @requests = current_user.requests.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:message, :state, :user_id, :order_id)
    end
end
