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

class Goal < ActiveRecord::Base

  belongs_to :user

end
