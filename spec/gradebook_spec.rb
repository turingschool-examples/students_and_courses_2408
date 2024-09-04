require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
    before(:each) do
        @gradebook = Gradebook.new("Prof_Nick", {course: "BE_coding"}) 
    end

    it "exists" do
        expect(@gradebook).to be_instance_of(Gradebook)
    end
end