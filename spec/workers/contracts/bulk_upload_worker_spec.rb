require 'rails_helper'
require 'sidekiq/testing'

RSpec.describe Contracts::BulkUploadWorker, type: :worker do
  it { expect { described_class.perform_async('') }.to change(described_class.jobs, :size).by(1) }
end
