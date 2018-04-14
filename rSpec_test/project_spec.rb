require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do  
  before(:each) do 
    @project1 = Project.new('project 1', 'description 1', 'owner 1') 
    @project2 = Project.new('project 2', 'description 2', 'owner 2')
  end
  it 'has a getter and setter for name attribute' do
    # @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("project 1") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    expect(@project2.name).to eq("project 2")
  end 
  it 'has a getter and setter for owner attribute' do
    expect(@project1.owner).to eq("owner 1") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    expect(@project2.owner).to eq("owner 2")
  end 
  it 'has a method elevator_pitch to explain name and description and owner' do
    expect(@project1.elevator_pitch).to eq("project 1, description 1, owner 1")
    expect(@project2.elevator_pitch).to eq("project 2, description 2, owner 2")
  end
  it 'has a method for tasks attribute' do
    expect(@project1.tasks).to eq([])
    expect(@project2.tasks).to eq([])
  end
  it 'has a method for add_tasks' do
    expect(@project1.add_tasks).to eq(["project 1", "description 1", "owner 1"])
    expect(@project2.add_tasks).to eq(["project 2", "description 2", "owner 2"])
  end
  it 'has a method for add_tasks' do
    expect(@project1.print_tasks).to eq(["project 1", "description 1", "owner 1"])
    expect(@project2.print_tasks).to eq(["project 2", "description 2", "owner 2"])
  end
end
