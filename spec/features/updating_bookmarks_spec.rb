feature 'update a bookmark' do
  scenario 'user can update the url and/or title of a bookmark' do
    bookmark = Bookmark.create(url: 'www.amazon.com', title: 'Amazon')
    visit('/bookmarks')
    expect(page).to have_link('Amazon', href: 'www.amazon.com')
    first('.bookmark').click_button('Edit')
    expect(current_path).to eq("/bookmarks/#{bookmark.id}/edit")
    fill_in('title', with: 'Test')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')
    expect(current_path).to eq('/bookmarks/')
    expect(page).to have_link('Test', href: 'http://testbookmark.com')
    expect(page).to_not have_link('Amazon', href: 'www.amazon.com')
  end
end
