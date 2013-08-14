# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :record do
    thread 1
    filename "MyString"
    frame 1
    file_type 1
    event_timestamp "2013-07-26 15:05:46"
  end
end
