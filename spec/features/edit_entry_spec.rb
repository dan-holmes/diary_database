feature "edit entry" do
  scenario "Add an entry, view it, then edit it and see the new text" do
    clear_entries_table
    visit("/entries")
    click_on "New Entry"
    fill_in "title", with: "Second Test"
    fill_in "body", with: "Second Body"
    click_on "Submit"
    click_on "Second Test"
    click_on "Edit"
    fill_in "body", with: "Edited text"
    click_on "Submit"
    expect(page).to have_content "Edited text"
  end
end
