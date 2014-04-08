require 'spec_helper'

describe 'lmctfy::source_cli' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
