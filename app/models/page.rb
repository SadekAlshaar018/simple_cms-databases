class Page < ApplicationRecord
# belongs to subject optional true, and that would mean that we could save pages to our database
  belongs_to :subject, { :optional => false }
  has_and_belongs_to_many :admin_users

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("position ASC") }
  scope :newest_first, lambda { order("created_at DESC") }


end


# ik ben gestopt hier , ik heb probleem met create section door AdminUser
