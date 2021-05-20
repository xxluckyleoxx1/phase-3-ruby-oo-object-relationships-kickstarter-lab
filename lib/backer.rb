class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new_project_backer = ProjectBacker.new(project, self)
    end

    def Project_Backer
        ProjectBacker.all.select do |pb_instance|
            pb_instance.backer == self
        end
    end
    
    def backed_projects
        self.Project_Backer.map do |pb_instance|
            pb_instance.project
        end
    end
        



end