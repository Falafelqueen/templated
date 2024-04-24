FactoryBot.define do
  factory :widget do
    name { "MyString" }
    price { 1 }
    bought { false }
    category { "MyString" }
  end
end
