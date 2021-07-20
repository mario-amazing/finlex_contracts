class Contracts::BulkUploadsController < ApplicationController
  def create
    # NOTE In real project add job show status -> for better UX
    Contracts::BulkUploadWorker.perform_async(JSON.parse(File.read(params[:contracts_file])))
    head :ok
  end
end
