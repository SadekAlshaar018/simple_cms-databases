class CreatePages < ActiveRecord::Migration[5.1]
  # syntax for relation database
  belongs_to :subject, { :optional => false }

  def up
    create_table :pages do |t|
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
    # i use a permalink to looking up the pages
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end
  # i writed add_index out side of method up,cuz i don't need drop index when i want a drop table
  def down
    drop_table :pages
  end
end
