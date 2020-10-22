require "sinatra/base"
require_relative "./lib/entry.rb"
require_relative "./lib/connection.rb"

class Diary < Sinatra::Base
  get "/" do
    "hello world"
  end

  get "/entries" do
    @all_entries = Entry.all
    erb :entries
  end

  get "/entries/:id" do
    @entry = Entry.get(params["id"])
    erb :view_entry
  end

  run! if app_file == $0
end
