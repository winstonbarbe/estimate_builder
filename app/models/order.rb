class Order < ApplicationRecord
  def generate_eb_number
    number = Order.last.eb_number || "EB0000"
    return number if number == "EB0000"
    number = number[2..-1].to_i + 1
    number = "EB" + number.to_s.rjust(4, "0")
    number
  end

  # def generate_name
  #   "#{artist} - #{title}"
  # end
end
