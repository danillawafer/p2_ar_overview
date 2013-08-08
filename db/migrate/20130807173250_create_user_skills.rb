class CreateUserSkills < ActiveRecord::Migration
  def change
  	create_table :user_skills do |t|
  		t.belongs_to :user
  		t.belongs_to :skill
  		t.integer :skill_level
  	end
  end
end
