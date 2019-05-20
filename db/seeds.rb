Coupon.destroy_all

kroger1 = Coupon.create(coupon_code: "KRG001", store: "Kroger")
kroger2 = Coupon.create(coupon_code: "KRG002", store: "Kroger")
kroger3 = Coupon.create(coupon_code: "KRG003", store: "Kroger")

publix1 = Coupon.create(coupon_code: "PUB001", store: "Publix")
publix2 = Coupon.create(coupon_code: "PUB002", store: "Publix")
publix3 = Coupon.create(coupon_code: "PUB003", store: "Publix")