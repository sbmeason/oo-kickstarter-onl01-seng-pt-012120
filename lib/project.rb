class Project
  attr_accessor :backed_projects
  attr_reader :title
  
  def initialize(title)
    @title = title
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.backers.include?(self)
  end
end
