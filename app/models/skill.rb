class Skill < ActiveRecord::Base
    has_many :projects
    validates :name, :presence => true
  end