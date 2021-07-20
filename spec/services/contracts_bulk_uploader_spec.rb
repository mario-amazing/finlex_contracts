require 'rails_helper'

RSpec.describe ContractsBulkUploader, type: :model do
  let(:json_data) { JSON.parse(file_fixture("customer_bulk_upload.json").read) }
  subject(:contracts_uploader) { ContractsBulkUploader.call(json_data) }

  before { FactoryBot.create :customer, id: '42' }

  it { expect { contracts_uploader }.to change(Contract, :count).by(3) }
end
