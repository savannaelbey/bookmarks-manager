require 'pg'

feature 'viewing bookmarks' do

  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content "Bookmarks Manager"
  end

  scenario "visiting the '/bookmarks' route shows all the bookmarks" do

    # Add the test data
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")
    
    visit ('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end
