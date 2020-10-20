feature "Setting up infrastructure" do
  scenario "Visit the site and see hello world" do
    visit "/"
    expect(page).to have_content("hello world")
  end
end
