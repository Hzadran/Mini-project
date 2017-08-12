json.extract! paymentt, :id, :Amount, :discount_id, :cheque_id, :Total_fee, :Remaining_fee, :pay_date, :studentt_id, :created_at, :updated_at
json.url paymentt_url(paymentt, format: :json)