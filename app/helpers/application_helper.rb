module ApplicationHelper
    def get_converted_amount(amount)
        require 'converter'
        conv = Converter.new(amount)
        conv.convert!
    end
end
