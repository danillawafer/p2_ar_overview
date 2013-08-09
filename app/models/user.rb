class User < ActiveRecord::Base
  has_many :skills_users
	has_many :skills, :through => :skills_users
  # Remember to create a migration!

  def proficiency_for(skill)
    SkillsUser.find_by_user_id_and_skill_id(self.id, skill.id).skill_level
  end

  def set_proficiency_for(skill, skill_level)
    skill = SkillsUser.find_by_user_id_and_skill_id(self.id, skill.id)
    skill.skill_level = skill_level
    skill.save
  end
end
