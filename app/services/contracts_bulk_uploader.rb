class ContractsBulkUploader
  def self.call(json_data)
    json_data.each { |contract| Contract.create!(contract) }
  end
end
