feature "list of titles" do
  scenario "see list of titles on /entries" do
    clear_entries_table
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec "INSERT INTO entries (title, body) VALUES ('Test Title 1','Test Body 1')"
    @connection.exec "INSERT INTO entries (title, body) VALUES ('Test Title 2','Test Body 2')"
    visit "/entries"
    expect(page).to have_content("Test Title 1")
    expect(page).to have_content("Test Title 2")
  end

  scenario "clicking on a title shows you the body" do
    clear_entries_table
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec "INSERT INTO entries (title, body) VALUES ('Test Title 1','Test Body 1')"
    visit "/entries"
    click_on "Test Title 1"
    expect(page).to have_content("Test Body 1")
  end
end
