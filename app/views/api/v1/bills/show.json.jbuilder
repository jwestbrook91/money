json.extract! @bill, :id, :name, :next_due_date, :amount

json.repeat_interval do
  json.extract! @bill.repeat_interval, :id, :interval, :label
end

json.category do
  json.extract! @bill.category, :id, :name, :label
end

json.tags @bill.tags do |tag|
  json.extract! tag, :id, :name
end

json.payments @bill.payments do |payment|
  json.extract! payment, :id, :amount

  json.payment_source do
    json.extract! payment.payment_source, :id, :name, :type
  end
end
