class CouponsController < ApplicationController
  def new
    @coupon = Coupon.new
  end

  def index
    @coupons = Coupon.all
  end

  def create
      @coupon = Coupon.new(params.require(:coupon).permit(:coupon_code, :store))
      # @coupon.coupon_code = params[:coupon][:coupon_code]
      # @coupon.store = params[:coupon][:store]
      @coupon.save
      redirect_to coupon_path(@coupon)
    end

  #
  def show
    @coupon = Coupon.find(params[:id])
  end


end
