class Invoice < ApplicationRecord
    has_one :payment
end
