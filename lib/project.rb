class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_project_backer = ProjectBacker.new(self, backer)
    end

    def Project_Backer
        ProjectBacker.all.select do |pb_instance|
            pb_instance.project == self
        end
    end

    def backers 
        self.Project_Backer.map do |pb_instance|
            pb_instance.backer
        end.uniq
    end

    
end