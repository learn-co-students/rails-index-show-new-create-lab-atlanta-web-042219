class CouponsController < ApplicationController
    before_action :set_coupons, only: [:show, :update, :edit]
    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new
        @coupon = Coupon.new
    end
    
    def create
        # byebug
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        if @coupon.save
            redirect_to coupon_path(@coupon)
        else
            render 'new'
        end
    end

    def destroy
        Coupon.destroy(params[:id])
        redirect_to '/coupons'
    end
    
    def edit
    end

    def update
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        @coupon.save
        redirect_to coupon_path
    end

    private
    def set_coupons
        @coupon = Coupon.find(params[:id])
    end
end
