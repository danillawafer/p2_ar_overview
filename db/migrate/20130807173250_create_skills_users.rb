class CreateSkillsUsers < ActiveRecord::Migration
  def change
  	create_table :skills_users do |t|
  		t.integer :user_id
  		t.integer :skill_id
  		t.integer :skill_level, default: 0
  	end
  end
end
