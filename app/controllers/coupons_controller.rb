class CouponsController < ApplicationController

	def index
		@coupons = Coupon.all
	end

	def new
		@coupon = Coupon.new
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def create
	    code = params[:coupon_code]
	    store = params[:store]
	    @coupon = Coupon.new(coupon_code:code, store:store)
	    if @coupon.save
		# byebug
			redirect_to coupon_path(@coupon)
	      # redirect_to coupons_path
	    end
  end

end
