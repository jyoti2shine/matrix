require 'rails_helper'

RSpec.describe Position, :type => :model do
  subject { described_class.new }

  it "is invalid without a title" do
    expect(subject).to_not be_valid
  end
end