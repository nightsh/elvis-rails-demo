class Account < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user

  def display_name
    read_attribute(:display_name) || self.user.read_attribute(:email)[/[^@]+/]
  end

end
