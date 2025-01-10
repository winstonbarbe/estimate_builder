class Api::OrdersController < ApplicationController
  def index
    @orders = Order.all
    render :index
  end

  def create
    @order = Order.new(
      matrix: params[:matrix] || params[:catalog_number],
      artist: params[:artist],
      title: params[:title],
    )
    @order.eb_number = @order.generate_eb_number
    @order.catalog_number = params[:catalog_number] || @order.eb_number
    @order.name = "#{@order.eb_number} - #{params[:artist]} - #{params[:title]}"

    # @order.save
    render :show
    # customer: params[:customer],
    # in_hand_date: params[:in_hand_date],
    # units_ordered: params[:units_ordered],
    # sides: params[:sides],
    # discs: params[:discs],
    # speed: params[:speed],
    # weight: params[:weight],
    # center_label: params[:center_label],
    # jacket_type: params[:jacket_type],
    # jacket_finish: params[:jacket_finish],
    # inner_sleeve_one: params[:inner_sleeve_one],
    # inner_sleeve_one_finish: params[:inner_sleeve_one_finish],
    # insert_type: params[:insert_type],
    # insert_color: params[:insert_color],
    # insert_finish: params[:insert_finish],
    # outerwear: params[:outerwear],
    # test_pressing_quantity: params[:test_pressing_quantity],
    # inner_sleever_two: params[:inner_sleever_two],
    # inner_sleever_two_finish: params[:inner_sleever_two_finish],
    # disc_one_base_color: params[:disc_one_base_color],
    # barcode: params[:barcode],
    # barcode_sticker: params[:barcode_sticker],
    # download_cards: params[:download_cards],
    # # need model method to create the eb number. I think my plain is too call Order.last[:eb_number] and add one to that.
    # format = ""

    # if params[:side] == "2"
    #   format += "Single, "
    # elsif params[:sides] == "4"
    #   format += "Double, "
    # elsif params[:sides] == "6"
    #   format += "Triple, "
    # end
  end
end
