class CouponsController < ApplicationController
  before_action :set_coupon, only: :show
  def index
    @coupons = Coupon.all
  end

  def show 
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store= params[:coupon][:store]
    if @coupon.save     
      flash[:notice] = "Coupon was succesfully created" 
      redirect_to coupon_path(@coupon)
    else
      render 'new'
    end 
  end

  private
  
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  # def coupon_params
  #   params.require(:coupon).permit(:coupon_code, :store)
  # end


end