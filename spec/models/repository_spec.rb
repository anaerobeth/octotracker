require 'spec_helper'
describe Repository do
  it {should have_valid(:title).when('Devise') }
  it { should_not have_valid(:title).when(nil, '') }

  it {should have_valid(:description).when('Cool gem') }
  it { should_not have_valid(:description).when(nil, '') }

  it {should have_valid(:url).when('www.google.com') }
  it { should_not have_valid(:url).when(nil, '') }
end
