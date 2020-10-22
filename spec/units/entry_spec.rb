describe Entry do
  it "Can add and retrieve an entry from the database" do
    clear_entries_table
    Entry.add("Test Title 1", "Test Body 1")
    expect(Entry.get(1)[0]["title"]).to eq "Test Title 1"
    expect(Entry.get(1)[0]["body"]).to eq "Test Body 1"
  end
  it "Can edit an entry" do
    clear_entries_table
    Entry.add("Test Title 1", "Test Body 1")
    Entry.edit(1, "Edited text")
    expect(Entry.get(1)[0]["body"]).to eq "Edited text"
  end
end
