class AddOverviewToProjects < ActiveRecord::Migration
  def change
    add_column :refinery_projects, :overview, :text
  end
end
