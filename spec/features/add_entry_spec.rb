feature "add entry" do
  scenario "Add an entry using a form and see its title in a list" do
    clear_entries_table
    visit("/entries")
    click_on "New Entry"
    fill_in "title", with: "Second Test"
    fill_in "body", with: "Second Body"
    click_on "Submit"
    expect(page).to have_content("Second Test")
  end
end
