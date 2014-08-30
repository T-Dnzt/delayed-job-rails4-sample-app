class Document < ActiveRecord::Base

  def format
    sleep 5
    update_column :imported, true
  end

  handle_asynchronously :format

end
