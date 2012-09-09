module Refinery
  module Projects
    class Project < Refinery::Core::BaseModel
      self.table_name = 'refinery_projects'

      attr_accessible :name, :description, :icon_id, :repo, :position

      acts_as_indexed :fields => [:name, :description, :repo]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :icon, :class_name => '::Refinery::Image'
    end
  end
end
