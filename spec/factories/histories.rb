# frozen_string_literal: true

FactoryGirl.define do
  factory :history do
    date_of_onset "2017-03-05"
    account
    price "9.99"
  end

  factory :invalid_history, class: History do
    date_of_onset nil
    price nil
  end

  factory :update_history, class: History do
    date_of_onset "2017-03-06"
    association :account, factory: :wallet
    price "10.99"
  end

  # 2017-01 月分
  factory :his_2017_01, class: History do
    date_of_onset "2017-01-31"
    association :account, factory: :wallet
    price "999"
  end
end
