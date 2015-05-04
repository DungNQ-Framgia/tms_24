require 'spec_helper' 

describe User do 
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "is invalid without a email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end
  it "is invalid without a role" do
    FactoryGirl.build(:user, role: nil).should_not be_valid
  end
  it "returns an user is admin or not" do
    user = FactoryGirl.build(:user, role: 0)
    user.admin?.should == false
  end
end