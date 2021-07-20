require 'rails_helper'

RSpec.describe Contract, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
  end
end
