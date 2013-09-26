require 'spec_helper'

feature 'add a library', %Q{
  yadda yadda
} do

  scenario 'valid info' do
    prev_count = Repository.new
    visit new_repository_url
    fill_in 'Title', with: 'Devise'
    fill_in 'Description', with: 'Nice Library'
    fill_in 'Url', with: 'http://www.google.com'
    click_button 'Record'
    expect(page).to have_content('Repository recorded')
    expect(Repository.count).to eql(prev_count + 1)
  end

  scenario 'invalid info' do
  end

end