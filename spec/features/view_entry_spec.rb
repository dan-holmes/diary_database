feature "View an individual entry" do
  scenario "View the title and body of an entry using a url" do
    clear_entries_table
    @connection = PG.connect(dbname: Connection.database_name)
    @connection.exec "INSERT INTO entries (title, body) VALUES ('Test Title 1','Test Body 1')"
    visit "/entries/1"
    expect(page).to have_content("Test Title 1")
    expect(page).to have_content("Test Body 1")
  end
end
