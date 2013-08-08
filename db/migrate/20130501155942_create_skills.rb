class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :context
      t.integer :user_id
      t.timestamps
    end
  end
end