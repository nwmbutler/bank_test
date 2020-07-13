require 'account'

describe Account do
  it "is an instance of Account" do
    expect(subject).to be_a_kind_of Account
  end

  it "adds allows a deposit to be made" do
    expect(subject).to respond_to(:deposit).with(1).arguments
  end

end
