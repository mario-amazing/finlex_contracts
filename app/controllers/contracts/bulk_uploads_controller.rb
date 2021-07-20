class Contracts::BulkUploadsController < ApplicationController
  def create
    ContractsBulkUploader.call(JSON.parse(File.read(params[:contracts_file])))
    head :ok
  end
end
