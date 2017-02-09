class Project

  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer if !@backers.include?(backer)
    backer.back_project(self) if !backer.backed_projects.include?(self)
  end

end
