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

  post "/entries" do
    Entry.add(params["title"], params["body"])
    redirect "/entries"
  end

  get "/entries/new" do
    erb :entries_new
  end

  get "/entries/:id" do
    @entry = Entry.get(params["id"])
    erb :view_entry
  end

  post "/entries/:id" do
    Entry.edit(params["id"], params["body"])
    redirect "/entries/" + params["id"]
  end

  get "/entries/:id/edit" do
    @entry = Entry.get(params["id"])
    erb :edit_entry
  end

  run! if app_file == $0
end
