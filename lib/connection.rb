class Connection
  def self.database_name
    if ENV["RACK_ENV"] == "test"
      "diary_test"
    else
      "diary"
    end
  end
end
