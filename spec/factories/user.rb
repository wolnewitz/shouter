FactoryGirl.define do
  factory :user do
    email "something@gmail.com"
    password_digest "test"
    username "codecor"
  end

  factory :photo_shout, class: "Shout" do
    association :content, factory: :photo_shout_factory
  end

  factory :text_shout, class: "Shout" do
    association :content, factory: :text_shout_factory
  end
end
