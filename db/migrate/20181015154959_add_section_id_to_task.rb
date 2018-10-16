class AddSectionIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :section_id, :integer
  end
end
