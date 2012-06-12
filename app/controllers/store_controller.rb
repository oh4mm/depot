# encoding: utf-8
class StoreController < ApplicationController
  def index
    @products = Product.all
    @now = Time.now.strftime("%Y年%m月")
  end
end