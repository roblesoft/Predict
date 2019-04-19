class EstadisticaController < ApplicationController
  class Data 
    attr_accessor :name, :data
    def initialize name, data
      @name = name
      @data = data
    end
  end
  def charts

    @products = Array.new
    Sale.all.each do |sale|
      @products << sale.name
    end

    @products_per_month = Array.new

    @products.each do |product| 
      name_per_month = Array.new
      quantity_per_month = Array.new
      Month.all.each do |month| 
        month.products.all.size.times do |index|
          if product == month.products.all[index].name
            name_per_month << month.name
            quantity_per_month << month.products.all[index].quantity
          end
        end
      end 

      data_per_month = Hash[name_per_month.zip(quantity_per_month).to_h]
      product_per_month = Data.new product, data_per_month
      @products_per_month << product_per_month
    end

    @promedios = Array.new

    @products_per_month.each do |product|
      prom = 0
      product.data.each do |number|
        prom += number[1]
      end
      @promedios << prom / @products_per_month[1].data.size
    end
    @avarage_products = Hash[@products.zip(@promedios).to_h]
  end


end
