class UploadsController < ApplicationController

  def index

  end

  def format
    @doc = Document.create(name: 'Invisible')
    @doc.delay.format
  end

  def status
    @doc = Document.find(params[:document_id])
    render json: { id: @doc.id, imported: @doc.imported }
  end

end
