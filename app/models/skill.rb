class Skill < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :skills_users
	has_many :users, :through => :skills_users
  # Remember to create a migration!
  def user_with_proficiency(skill_level)
    skill = SkillsUser.where(skill_level: skill_level, skill_id: self.id).first
    user_id = skill.user_id
    User.find_by_id(user_id)
  end
end
