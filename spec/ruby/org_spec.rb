require "spec_helper"

RSpec.describe Org do
  it "has a version number" do
    expect(Org::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
