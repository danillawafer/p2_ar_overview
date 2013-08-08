class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :context
      t.belongs_to :user
      t.timestamps
    end
  end
end
