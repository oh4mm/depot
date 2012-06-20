# encoding: utf-8
class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    @cart = current_cart

    @now = Time.now.strftime("%Y年%m月")
  end
end