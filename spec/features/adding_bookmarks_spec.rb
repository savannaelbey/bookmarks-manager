

feature ' adding a new bookmark' do
  scenario 'user able to add new bookmarks to bookmark manager' do
    visit ('/bookmarks/new')
    fill_in('title', with: 'Test')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Add')
    expect(page).to have_link('Test', href: 'http://testbookmark.com')
  end

end
