FactoryGirl.define do
  factory :order_item do
    order "MyString"
    references "MyString"
    item nil
    item_price 1
    quantity 1
  end
end
