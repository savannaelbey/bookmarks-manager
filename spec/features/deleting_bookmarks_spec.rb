feature 'deleting bookmarks' do
  scenario 'user can delete a bookmark' do
    visit ('/bookmarks/new')
    fill_in('title', with: 'Google')
    fill_in('url', with: 'www.google.com')
    click_button('Add')
    click_button('Delete')
    expect(page.status_code).to eq(200)
    expect(page).to_not have_link('Google', href: 'www.google.com')
  end
end
