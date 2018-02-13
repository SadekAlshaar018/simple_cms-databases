class Page < ApplicationRecord

    # belongs to subject optional true, and that would mean that we could save pages to our database
  belongs_to :subject, { :optinal => true }

  # has_and_belongs_to_many :admin_users , :join_table => 'pages_admin_users'
end
