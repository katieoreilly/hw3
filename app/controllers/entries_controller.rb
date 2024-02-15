class EntriesController < ApplicationController

  def index
    @entry = Entry.all 
  end

  def show
    @entry = Entry.find_by({"id" => params["id"]})
  end

  def new
    # render view with new Entry form
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params ["posted_on"]

    @entry["place_id"] = params["place_id"]

    @entry.save
    redirect_to "/places"
  end 

end
