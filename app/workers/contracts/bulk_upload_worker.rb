class Contracts::BulkUploadWorker
  include Sidekiq::Worker

  def perform(json_data)
    ContractsBulkUploader.call(json_data)
  end
end
