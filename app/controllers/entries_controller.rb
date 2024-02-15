class EntriesController < ApplicationController

  def index
    @entry = Entry.all 
  end

end
