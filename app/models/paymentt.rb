class Paymentt < ApplicationRecord
  belongs_to :discount
  belongs_to :cheque
  belongs_to :studentt
end
