require 'spec_helper'

describe IgnoreGoogleIndex do
  it 'has a version number' do
    expect(IgnoreGoogleIndex::VERSION).not_to be nil
  end

  context 'headers' do
    let(:service) { IgnoreGoogleIndex::Rack }
    let(:app) { double('app') }
    let(:status) { 200 }
    let(:response) { { text: :ok }.to_json }
    let(:headers) { Hash.new }

    specify 'success' do
      ClimateControl.modify IGNORE_GOOGLE_INDEX: '1' do
        allow(app).to receive(:call).and_return([status, headers, response])
        command = service.new(app)
        res = command.call({})
        expect(res[1]['X-Robots-Tag']).to be_truthy
      end
    end

    specify 'fail' do
      allow(app).to receive(:call).and_return([status, headers, response])
      command = service.new(app)
      res = command.call({})
      expect(res[1]['X-Robots-Tag']).to be_falsey
    end
  end
end
