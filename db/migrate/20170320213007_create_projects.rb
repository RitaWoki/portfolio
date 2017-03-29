class CreateProjects < ActiveRecord::Migration[5.0]
  def change
      create_table :projects do |t|
        t.column :description, :string
        t.column :skill_id, :integer

        t.timestamps
      end
    end
end
