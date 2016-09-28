require 'rails_helper'

RSpec.describe Training, :type => :model do
  subject { described_class.new }

  it "is invalid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end