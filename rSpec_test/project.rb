class Project
    attr_accessor :name, :description, :owner

    def initialize (name, description, owner)
      @name = name
      @description = description
      @owner = owner
      @tasks = []
    end
    def elevator_pitch
      "#{@name}, #{@description}, #{@owner}"
    end

    def tasks
        return @tasks
    end

    def add_tasks 
        @tasks.push(@name)
        @tasks.push(@description)
        @tasks.push(@owner)
    end

    def print_tasks
        p @p = add_tasks
        @p.each do |t|
            puts t
        end
    end
end