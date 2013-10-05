require 'spec_helper'

feature 'add a repository', %Q{
  As a github user
  I want to add a repository to a library
  so that I can keep track of my repositories
} do

  scenario 'user supplies valid information' do
    prev_count = Repository.count

    visit new_repository_url
    fill_in 'Title', with: 'Devise'
    fill_in 'Description', with: 'Nice library'
    fill_in 'Url', with: 'http://www.google.com'
    click_button 'Record'

    expect(page).to have_content('Repository recorded')
    expect(Repository.count).to eql(prev_count + 1)

  end

  scenario 'user does not supply invalid information' do
    prev_count = Repository.count

    visit new_repository_url
    click_button 'Record'

    expect(page).to_not have_content('Repository recorded')
    expect(page).to have_content("can't be blank")
    expect(Repository.count).to eql(prev_count)
  end

end