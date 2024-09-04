require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
    before(:each) do
        @gradebook = Gradebook.new("Nick Teets", ["Calculus"])
    end

    describe '#initialze' do
        it "exists" do
            expect(@gradebook).to be_instance_of(Gradebook)
        end
    end
end