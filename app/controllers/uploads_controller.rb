class UploadsController < ApplicationController

  def index

  end

  def format
    doc = Document.create(name: 'Invisible')
    doc.delay.format
  end

end
