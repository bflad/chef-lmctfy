require 'spec_helper'

describe 'lmctfy::source_cpp' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end
end
