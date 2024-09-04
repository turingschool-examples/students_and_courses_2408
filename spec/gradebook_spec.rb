require 'rspec'
require './lib/gradebook'

RSpec.describe Gradebook do

  it 'exists' do
    gradebook1 = Gradebook.new("Dumbledore")
    expect(gradebook1).to be_instance_of(Gradebook)
    expect(gradebook1.courses).to eq([])
    expect(gradebook1.instructor).to eq("Dumbledore")
  end
end