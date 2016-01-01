require 'rails_helper'
require 'rake'

RSpec.describe 'Alexa Importer Websites Task' do
  before { Tractionapi::Application.load_tasks }

  it { expect { Rake::Task['importer:run'].invoke }.not_to raise_exception }
end
