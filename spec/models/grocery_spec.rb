require 'spec_helper'

describe Grocery do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }
  it { should validate_presence_of :saved }
  it { should validate_presence_of :checked }
end

