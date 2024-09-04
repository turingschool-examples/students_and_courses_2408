require './lib/gradebook'

RSpec.describe Gradebook do
    it 'exists' do
    gradebook = Gradebook.new("Nick Teets")

    expect(gradebook).to be_instance_of(Gradebook)
    expect(gradebook.instructor).to eq("Nick Teets")
    end
end