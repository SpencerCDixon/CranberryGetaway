# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :renter do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    phone "MyString"
    start_date "2014-10-08 17:58:45"
    end_date "2014-10-08 17:58:45"
    description "MyText"
  end
end
