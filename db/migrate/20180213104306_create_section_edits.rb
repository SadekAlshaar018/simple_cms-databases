class CreateSectionEdits < ActiveRecord::Migration[5.1]
  def up

    drop_table :section_edits


    create_table :section_edits do |t|
      t.integer "admin_user_id"
      t.integer "section_id"
      t.string "summery"
      t.timestamps
    end
      add_index("section_edits", ['admin_user_id', 'section_id'])
  end

  # def down
  #
  # end
end

# ik schreef met deze weg omdat ik een error had , toen ik met deze weg typde , dan werkte helemaal
