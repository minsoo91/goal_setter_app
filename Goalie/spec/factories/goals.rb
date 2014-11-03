# == Schema Information
#
# Table name: goals
#
#  id           :integer          not null, primary key
#  statement    :string(255)      not null
#  user_id      :integer          not null
#  private_goal :boolean          default(FALSE)
#  completed    :boolean          default(FALSE)
#  created_at   :datetime
#  updated_at   :datetime
#

FactoryGirl.define do
  factory :goal do
    statement "MyString"
user_id 1
private_goal false
completed false
  end

end
