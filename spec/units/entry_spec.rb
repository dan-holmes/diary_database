describe Entry do
  let(:connection) { double(:connection) }
  let(:pg_result) { double(:pg_result) }
  describe "#get" do
    it "Retrieves an entry from the database" do
      query = "SELECT title, body FROM entries WHERE id = 1"
      allow(connection).to receive(:exec).with(query).and_return(pg_result)
      expect(Entry.get(1, connection)).to eq pg_result
    end
  end
end
