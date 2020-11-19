require 'pg'

feature 'viewing bookmarks' do

  scenario 'visiting the index page' do
    visit ('/')
    expect(page).to have_content "Bookmarks Manager"
  end

  scenario "visiting the '/bookmarks' route shows all the bookmarks" do

    # Add the test data
    Bookmark.create(url: "http://www.makersacademy.com", title: "Makers")
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy software")
    Bookmark.create(url: "http://www.google.com", title: "Google")

    visit ('/bookmarks')
    expect(page).to have_link('Makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    
  end
end
