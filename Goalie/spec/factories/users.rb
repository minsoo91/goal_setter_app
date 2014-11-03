# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  session_token   :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :user do
    username Faker::Internet.user_name
    password_digest "junkaljkretyjklerty"
    session_token "123456"
  end
end
